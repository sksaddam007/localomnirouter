# Local OmniRouter

This repository contains the deployment configuration to run [OmniRoute](https://github.com/diegosouzapw/OmniRoute) (open-source AI gateway).

## Deployment

### Docker

Build and run the container:

```bash
docker build -t localomnirouter .
docker run -d \
  --name omniroute \
  -p 10000:10000 \
  -e PORT=10000 \
  -e JWT_SECRET="your-32-char-or-longer-random-secret" \
  localomnirouter
```

### Environment Variables

| Variable | Required | Description |
| :--- | :--- | :--- |
| `PORT` | Yes | Port on which the gateway listens (default: `10000`). |
| `JWT_SECRET` | Yes | Secret used for JWT authentication (**must be at least 32 characters**). |
| `INITIAL_PASSWORD` | Optional | Initial password for the admin dashboard. |
| `DATABASE_URL` | Optional | PostgreSQL connection string for persistent database storage. |

> Generate a secure `JWT_SECRET` using:
> ```bash
> openssl rand -hex 32
> ```

## Usage

Once deployed, visit your service URL directly in the browser to access the dashboard.

- **Dashboard**: `https://<your-host>`
- **OpenAI-Compatible Endpoint**: Point your tools (Cursor, Claude Code, Cline, etc.) to:
  ```
  Base URL: https://<your-host>/v1
  ```
