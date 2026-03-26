FROM python:3.13-slim

WORKDIR /code
ENV PORT 8000
EXPOSE 8000

# Install uv to manage dependencies
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libmagic1 \
        libgl1 \
        libglib2.0-0 \
        libglx-mesa0 \
        libgomp1 \
        git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy configuration and lock files
COPY pyproject.toml uv.lock ./

# Install dependencies using uv
RUN uv sync --frozen --no-dev

# Copy application code
COPY . .

# Set default command using uv run
CMD ["uv", "run", "gunicorn", "score:app", "--workers", "4", "--threads", "4", "--worker-class", "uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:8000", "--timeout", "300"]
