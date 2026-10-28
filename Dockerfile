
# Stage 1: Install dependencies
FROM node:24-bookworm-slim AS base

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

# Stage 2: Run verification
FROM base AS verify

COPY . .
RUN npm run verify

# Stage 3: Production dependencies
FROM node:24-bookworm-slim AS production-deps

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

# Stage 4: Production image
FROM node:24-bookworm-slim AS production

ENV NODE_ENV=production

WORKDIR /app

COPY --from=production-deps /app/node_modules ./node_modules
COPY --from=base /app/package.json ./package.json
COPY --from=verify /app/dist ./dist

EXPOSE 3000

CMD ["npm", "start"]
