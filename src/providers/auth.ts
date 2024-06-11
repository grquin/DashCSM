import type { AuthProvider } from "@refinedev/core";
import type { User } from "@/graphql/schema.types";
import { API_URL, dataProvider } from "./data";
import { gql } from '@apollo/client';

// For demo purposes and to make it easier to test the app, you can use the following credentials:
export const authCredentials = {
    email: "michael.scott@dundermifflin.com",
    password: "demodemo",
};

// Use environment variable
const HASURA_ADMIN_SECRET = process.env.HASURA_GRAPHQL_ADMIN_SECRET;

export const authProvider: AuthProvider = {
    login: async ({ email, password }) => {
        try {
            const { data } = await dataProvider.custom({
                url: API_URL,
                method: "post",
                headers: {
                    "x-hasura-admin-secret": HASURA_ADMIN_SECRET,
                },
                meta: {
                    variables: { email, password },
                    rawQuery: `
mutation Login($email: String!, $password: String!) {
    login(loginInput: {
        email: $email,
        password: $password
    }) {
        accessToken,
    }
}
`,
                },
            });

            localStorage.setItem("access_token", data.login.accessToken);

            return {
                success: true,
                redirectTo: "/",
            };
        } catch (e) {
            const error = e as Error;
            return {
                success: false,
                error: {
                    message: "message" in error ? error.message : "Login failed",
                    name: "name" in error ? error.name : "Invalid email or password",
                },
            };
        }
    },
    logout: async () => {
        localStorage.removeItem("access_token");
        return {
            success: true,
            redirectTo: "/login",
        };
    },
    onError: async (error) => {
        if (error.statusCode === "UNAUTHENTICATED") {
            return {
                logout: true,
            };
        }
        return { error };
    },
    check: async () => {
        try {
            await dataProvider.custom({
                url: API_URL,
                method: "post",
                headers: {
                    "x-hasura-admin-secret": HASURA_ADMIN_SECRET,
                },
                meta: {
                    rawQuery: `
query Me {
    me {
        name
    }
}
`,
                },
            });

            return {
                authenticated: true,
                redirectTo: "/",
            };
        } catch (error) {
            return {
                authenticated: false,
                redirectTo: "/login",
            };
        }
    },
    getIdentity: async () => {
        const accessToken = localStorage.getItem("access_token");

        try {
            const { data } = await dataProvider.custom<{ me: User }>({
                url: API_URL,
                method: "post",
                headers: accessToken
                    ? {
                          Authorization: `Bearer ${accessToken}`,
                      }
                    : {},
                meta: {
                    rawQuery: `
query Me {
    me {
        id,
        name,
        email,
        phone,
        jobTitle,
        timezone
        avatarUrl
    }
}
`,
                },
            });

            return data.me;
        } catch (error) {
            return undefined;
        }
    },
};
