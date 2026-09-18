# OmniRoute on Render

This repository contains the deployment configuration to run [OmniRoute](https://github.com/diegosouzapw/OmniRoute) (open-source AI gateway) on [Render](https://render.com/).

## Quick Deploy on Render

1. Go to your [Render Dashboard](https://dashboard.render.com/).
2. Click **New +** > **Web Service**.
3. Select **Build and deploy from a Git repository** and choose `sksaddam007/localomnirouter`.
4. Configure the service:
   - **Name**: `omniroute` (or your preferred name)
   - **Language / Runtime**: `Docker`
   - **Instance Type**: `Free`
5. Under **Environment Variables**, add:
   - `PORT`: `10000` (Render default)
   - `JWT_SECRET`: (Set a long, secure random string)
   - *(Optional)* `INITIAL_PASSWORD`: (Password for admin dashboard)
   - *(Optional)* `DATABASE_URL`: (PostgreSQL connection string from Neon.tech or Supabase for persistent storage)
6. Click **Deploy Web Service**.

## Usage

Once deployed, Render provides you with a public URL:
`https://omniroute-<id>.onrender.com`

- **Dashboard**: Visit your Render URL directly in the browser to configure AI providers (OpenAI, Anthropic, Gemini, DeepSeek, etc.).
- **OpenAI-Compatible Endpoint**: Point your tools (Cursor, Claude Code, Cline, etc.) to:
  ```
  Base URL: https://omniroute-<id>.onrender.com/v1
  ```
