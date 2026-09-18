---
title: OmniRoute
emoji: 🚀
colorFrom: blue
colorTo: indigo
sdk: docker
app_port: 7860
---

# Local OmniRouter

This repository contains the deployment configuration to run [OmniRoute](https://github.com/diegosouzapw/OmniRoute) (open-source AI gateway).

## Deployment on Hugging Face Spaces (16 GB Free RAM)

1. Create a new Space at [huggingface.co/new-space](https://huggingface.co/new-space).
2. Choose **Docker** > **Blank**.
3. In **Settings** > **Variables and secrets**, add:
   - `JWT_SECRET`: (minimum 32-character string)
   - *(Optional)* `INITIAL_PASSWORD`: (your dashboard password)
   - *(Optional)* Provider keys (`OPENAI_API_KEY`, `ANTHROPIC_API_KEY`, etc.)
4. Push this repository to your Space.

## Environment Variables

| Variable | Required | Description |
| :--- | :--- | :--- |
| `PORT` | Yes | Port on which the gateway listens (default: `7860`). |
| `OMNIROUTE_PORT` | Yes | Port on which OmniRoute binds (default: `7860`). |
| `OMNIROUTE_SERVER_HOST` | Yes | Host binding (default: `0.0.0.0`). |
| `JWT_SECRET` | Yes | Secret used for JWT authentication (**must be at least 32 characters**). |
| `INITIAL_PASSWORD` | Optional | Initial password for the admin dashboard. |

> Generate a secure `JWT_SECRET` using:
> ```bash
> openssl rand -hex 32
> ```

## Usage

Once deployed, visit your Space URL directly in the browser:

- **Dashboard**: `https://<your-username>-<space-name>.hf.space`
- **OpenAI-Compatible Endpoint**: Point your tools (Cursor, Claude Code, Cline, etc.) to:
  ```
  Base URL: https://<your-username>-<space-name>.hf.space/v1
  ```
