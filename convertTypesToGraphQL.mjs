import fs from 'fs';
import ts from 'typescript';

const schemaTypesPath = './src/graphql/schema.types.ts';
const outputPath = './generated/postgres-schema.sql';

function parseTypeScriptFile(filePath) {
    const content = fs.readFileSync(filePath, 'utf-8');
    const sourceFile = ts.createSourceFile(filePath, content, ts.ScriptTarget.Latest, true);
    return sourceFile;
}

function extractTypeAliasesAndInterfaces(sourceFile) {
    const types = [];
    function visit(node) {
        if ((ts.isTypeAliasDeclaration(node) || ts.isInterfaceDeclaration(node)) && node.type) {
            const typeName = node.name.escapedText;
            if (!['Maybe', 'InputMaybe', 'Exact', 'MakeOptional', 'MakeMaybe', 'MakeEmpty', 'Incremental', 'Scalars'].includes(typeName)) {
                types.push(node);
            }
        }
        ts.forEachChild(node, visit);
    }
    visit(sourceFile);
    return types;
}

function mapGraphQLTypeToSQL(type) {
    switch (type.kind) {
        case ts.SyntaxKind.StringKeyword:
            return 'VARCHAR';
        case ts.SyntaxKind.NumberKeyword:
            return 'INTEGER';
        case ts.SyntaxKind.BooleanKeyword:
            return 'BOOLEAN';
        case ts.SyntaxKind.TypeReference:
            if (type.typeName.escapedText === 'ID') {
                return 'SERIAL';
            }
            return 'TEXT';
        default:
            return 'TEXT';
    }
}

function convertToPostgresSchema(types) {
    const lines = [];
    types.forEach(type => {
        const typeName = type.name.escapedText.toLowerCase();
        const members = type.members || type.type.members;

        if (members && members.length > 0) {
            lines.push(`CREATE TABLE ${typeName} (`);
            members.forEach(member => {
                const fieldName = member.name.escapedText;
                const fieldType = mapGraphQLTypeToSQL(member.type);
                const isNullable = member.questionToken ? 'NULL' : 'NOT NULL';
                const isPrimaryKey = fieldName === 'id' ? 'PRIMARY KEY' : '';
                lines.push(`  ${fieldName} ${fieldType} ${isNullable} ${isPrimaryKey},`);
            });
            lines[lines.length - 1] = lines[lines.length - 1].replace(/,$/, ''); // Remove last comma
            lines.push(');\n');
        }
    });
    return lines.join('\n');
}

const sourceFile = parseTypeScriptFile(schemaTypesPath);
const types = extractTypeAliasesAndInterfaces(sourceFile);
const postgresSchema = convertToPostgresSchema(types);
fs.writeFileSync(outputPath, postgresSchema);

console.log(`PostgreSQL schema has been generated at ${outputPath}`);
