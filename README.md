# Project Overview

Welcome to our project! This project is built using FastAPI framework to create a fast and modern API with Python.

## Prerequisites

- Python 3.13 or higher
- [uv](https://github.com/astral-sh/uv) (Extremely fast Python package installer and resolver)

## Feature

API Endpoint : This project provides various API endpoint to perform specific tasks.
Data Validation : Utilize FastAPI data validation and serialization feature.
Interactive Documentation : Access Swagger UI and ReDoc for interactive API documentation.

## Getting Started

Follow these steps to set up and run the project locally:

1. Clone the Repository:

> git clone https://github.com/osama-ata/llm-graph-builder-lite.git

> cd llm-graph-builder-lite

2. Setup the environment and install dependencies:

> uv sync

Run the server:

> uv run uvicorn score:app --reload

## Run project using docker

## prerequisite

Before proceeding, ensure the following software is installed on your machine

Docker: https://www.docker.com/

1. Build the docker image

   > docker build -t your_image_name .

   Replace `your_image_name` with the meaningful name for your Docker image

2. Run the Docker Container

   > docker run -it -p 8000:8000 your_image_name

   Replace `8000` with the desired port.

## Access the API Documentation

Open your browser and navigate to
http://127.0.0.1:8000/docs for Swagger UI or
http://127.0.0.1:8000/redocs for ReDoc.

## Project Structure

`score.py`: Score entry point for FastAPI application

## Configuration

Update the environment variable in `.env` file. Refer example.env in backend folder for more config.

`OPENAI_API_KEY`: Open AI key to use incase of openai embeddings

`NEO4J_URI` : Neo4j URL

`NEO4J_USERNAME` : Neo4J database username

`NEO4J_PASSWORD` : Neo4j database user password

## Contact

For questions or support, feel free to contact us at christopher.crosbie@neo4j.com or michael.hunger@neo4j.com
