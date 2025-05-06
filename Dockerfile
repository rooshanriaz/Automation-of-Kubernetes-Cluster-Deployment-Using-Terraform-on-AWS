FROM node:19-alpine3.15 AS builder

WORKDIR /reddit-clone

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Next.js app for production
RUN npm run build

# Production image, copy built app and run in production mode
FROM node:19-alpine3.15 AS runner

WORKDIR /reddit-clone

# Copy built application from builder stage
COPY --from=builder /reddit-clone/package*.json ./
COPY --from=builder /reddit-clone/.next ./.next
COPY --from=builder /reddit-clone/public ./public
COPY --from=builder /reddit-clone/node_modules ./node_modules

# Expose the port the app runs on
EXPOSE 3000

# Set environment variable to production
ENV NODE_ENV=production

# Start the application in production mode
CMD ["npm", "start"]
