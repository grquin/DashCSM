// src/providers/data/apollo-client.ts

import { ApolloClient, InMemoryCache, createHttpLink } from '@apollo/client';
import { setContext } from '@apollo/client/link/context';

// Create an HTTP link to the Hasura GraphQL endpoint using the environment variable
const httpLink = createHttpLink({
  uri: import.meta.env.VITE_HASURA_GRAPHQL_URL,  // Use the environment variable here
});

// Create an authentication link to include the access token in the headers of each request
const authLink = setContext((_, { headers }) => {
  // Get the access token from local storage
  const token = localStorage.getItem('access_token');
  return {
    headers: {
      ...headers,
      // If a token exists, include it in the Authorization header
      authorization: token ? `Bearer ${token}` : '',
    },
  };
});

// Initialize Apollo Client with the combined auth and HTTP links and a cache instance
const client = new ApolloClient({
  // Combine the authentication link and the HTTP link
  link: authLink.concat(httpLink),
  // Initialize an in-memory cache for Apollo Client
  cache: new InMemoryCache(),
});

// Log the Hasura GraphQL URL to ensure the environment variable is being used correctly
console.log("Hasura GraphQL URL:", import.meta.env.VITE_HASURA_GRAPHQL_URL);

// Export the Apollo Client instance for use in other parts of the application
export default client;
