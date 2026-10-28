# CI/CD Lab Starter

A small Express and TypeScript app for the CI/CD Crash Course. automated testing, GitHub Actions, and deployment to Render.

The starter includes a home page, a health endpoint, and a passing health endpoint test with an added combined `verify` script, GitHub Actions workflow, and version endpoint during the course.

## Requirements

- Node.js 24 and npm
- Git
- GitHub and Render accounts for the deployment sections

## Get started

Start the development server:

```bash
npm run dev
```

Open [localhost:3000](http://localhost:3000). The [health endpoint](http://localhost:3000/api/health) returns HTTP 200 with:

```json
{"status":"ok"}
```

Stop the server with Ctrl+C.

## Scripts

- `npm run dev`: start the development server with automatic restarts.
- `npm run typecheck`: check TypeScript without generating output.
- `npm test`: run the health endpoint test. The test starts and stops its own server.
- `npm run build`: compile the app into `dist`.
- `npm start`: run the compiled app after building it.

These commands use Bash or Zsh. On Windows, use Git Bash.

```bash
rm -rf .git
git init -b main
git add .
git commit -m "feat: add CI/CD lab starter"
```

add verification and deployment. Keep `package-lock.json` committed; dependencies, build output, and environment files are excluded by `.gitignore`.

## Configuration

The server uses port `3000` unless `PORT` is set. The home page displays `APP_VERSION`, defaulting to `development`. Neither variable is required to run the starter locally.
