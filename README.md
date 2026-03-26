# LLM Graph Builder Lite

This is a lightweight, local-first version of the Neo4j LLM Graph Builder. It is refactored to rely exclusively on local **Ollama** models for both LLM processing and text embeddings, ensuring data privacy and reducing cloud costs.

## Features

- **Local-First**: Uses Ollama for LLM and Embeddings.
- **Minimal Dependencies**: Stripped of heavy cloud-provider libraries (GCS, S3, OpenAI, VertexAI).
- **Modern Tooling**: Managed with `uv` for lightning-fast dependency resolution.
- **Local Sources Only**: Supports local file uploads (.pdf, .txt) exclusively.

## Prerequisites

- **Python 3.13+**
- **Ollama**: [Download Ollama](https://ollama.com/) and ensure it's running locally.
- **Neo4j**: A running Neo4j instance (Aura or local Desktop/Docker).
- **uv**: [Install uv](https://github.com/astral-sh/uv) (`pip install uv`).

## Getting Started

1. **Pull Required Models**:
   ```bash
   ollama pull llama3
   ollama pull all-minilm
   ```

2. **Clone the Repository**:
   ```bash
   git clone https://github.com/osama-ata/llm-graph-builder-lite.git
   cd llm-graph-builder-lite
   ```

3. **Configure Environment**:
   Copy `example.env` to `.env` and fill in your Neo4j credentials.
   ```bash
   cp example.env .env
   ```

4. **Install and Run Locally**:
   ```bash
   uv sync
   uv run uvicorn score:app --reload
   ```

5. **Run with Docker Compose**:
   ```bash
   docker compose up --build
   ```
   The backend will be available at `http://localhost:8000`.

## API Documentation

- **Swagger UI**: `http://localhost:8000/docs`
- **ReDoc**: `http://localhost:8000/redoc`

## Configuration

Key variables in `.env`:

- `OLLAMA_BASE_URL`: URL where your Ollama instance is running.
- `NEO4J_URI`: Connection string for Neo4j.
- `LLM_MODEL_CONFIG_OLLAMA_LLAMA3`: Config for specific Ollama models.

## License

Apache-2.0
