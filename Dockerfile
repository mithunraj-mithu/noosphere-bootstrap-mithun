FROM node:20-alpine AS builder

# Create app directory
WORKDIR /usr/src/app

# Copy package manifests first to leverage layer caching
COPY ./app/package*.json ./


# Install dependencies
RUN npm ci --only=production


# ---- Production ----

FROM node:18-alpine AS production

WORKDIR /usr/src/app
# Copying node module
COPY --from=builder /usr/src/app/node_modules ./node_modules

RUN addgroup -S appgroup && adduser -S appuser -G appgroup && chown -R appuser:appgroup /usr/src/app

# Copy app source
COPY ./app/src ./

# Ensure logs written to stdout
ENV NODE_ENV=production

# Change ownership
USER appuser

EXPOSE 3000
CMD ["node", "index.js"]
