import fs from 'fs';
import ts from 'typescript';

const schemaTypesPath = './src/graphql/schema.types.ts';
const outputPath = './generated/postgres-schema.sql';

function parseTypeScriptFile(filePath) {
    const content = fs.readFileSync(filePath, 'utf-8');
    const sourceFile = ts.createSourceFile(filePath, content, ts.ScriptTarget.Latest, true);
    return sourceFile;
}

function extractTypeAliases(sourceFile) {
    const typeAliases = [];
    function visit(node) {
        if (ts.isTypeAliasDeclaration(node)) {
            typeAliases.push(node);
        }
        ts.forEachChild(node, visit);
    }
    visit(sourceFile);
    return typeAliases;
}

function convertToPostgresSchema(types) {
    const lines = [];
    types.forEach(type => {
        const typeName = type.name.escapedText.toLowerCase();
        if (type.type.members) {
            lines.push(`CREATE TABLE ${typeName} (`);
            type.type.members.forEach(member => {
                const fieldName = member.name.escapedText;
                const fieldType = member.type.kind === ts.SyntaxKind.StringKeyword ? 'VARCHAR' :
                                  member.type.kind === ts.SyntaxKind.NumberKeyword ? 'INTEGER' :
                                  member.type.kind === ts.SyntaxKind.BooleanKeyword ? 'BOOLEAN' : 'TEXT';
                const isNullable = member.questionToken ? 'NULL' : 'NOT NULL';
                lines.push(`  ${fieldName} ${fieldType} ${isNullable},`);
            });
            lines[lines.length - 1] = lines[lines.length - 1].replace(/,$/, ''); // Remove last comma
            lines.push(');\n');
        }
    });
    return lines.join('\n');
}

const sourceFile = parseTypeScriptFile(schemaTypesPath);
const typeAliases = extractTypeAliases(sourceFile);
const postgresSchema = convertToPostgresSchema(typeAliases);
fs.writeFileSync(outputPath, postgresSchema);

console.log(`PostgreSQL schema has been generated at ${outputPath}`);
