// src/providers/data/index.ts
import graphqlDataProvider, {
  GraphQLClient,
  liveProvider as graphqlLiveProvider,
} from "@refinedev/nestjs-query";
import { createClient } from "graphql-ws";
import apolloClient from './apollo-client';
import { fetchWrapper } from "./fetch-wrapper";

// Use environment variables for API URLs
export const API_BASE_URL = import.meta.env.VITE_API_BASE_URL;
export const API_URL = import.meta.env.VITE_HASURA_GRAPHQL_URL;
export const WS_URL = import.meta.env.VITE_HASURA_WS_URL;

export const client = new GraphQLClient(API_URL, {
  fetch: (url: string, options: RequestInit) => {
    try {
      return fetchWrapper(url, options);
    } catch (error) {
      return Promise.reject(error as Error);
    }
  },
});

export const wsClient =
  typeof window !== "undefined"
    ? createClient({
        url: WS_URL,
        connectionParams: () => {
          const accessToken = localStorage.getItem("access_token");

          return {
            headers: {
              Authorization: `Bearer ${accessToken}`,
            },
          };
        },
      })
    : undefined;

export const dataProvider = graphqlDataProvider(client);
export const liveProvider = wsClient ? graphqlLiveProvider(wsClient) : undefined;

export { apolloClient };
