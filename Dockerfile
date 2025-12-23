# Stage 1: Build
FROM node:20-alpine AS builder

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy source files
COPY . .

# Build the Astro site
RUN npm run build

# Stage 2: Serve with lightweight http server
FROM node:20-alpine AS runtime

WORKDIR /app

# Install a simple static file server
RUN npm install -g serve

# Copy built files
COPY --from=builder /app/dist ./dist

# Expose port 3000 (serve default)
EXPOSE 3000

# Start the server
CMD ["serve", "dist", "-l", "3000"]
