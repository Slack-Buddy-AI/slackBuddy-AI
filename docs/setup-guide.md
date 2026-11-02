# Local Setup Guide

## Prerequisites
Java 17, Maven, Node.js 18+, Docker, Ollama (optional, for a local LLM).

## Steps
1. Copy `.env.example` to `.env` and fill in values.
2. Start MySQL: `docker compose up -d`
3. (Optional) Start Ollama and pull models, e.g. `ollama pull llama3.2` and `ollama pull nomic-embed-text`.
4. Run the backend: `cd backend && mvn spring-boot:run`
5. Run the frontend: `cd frontend && npm install && npm run dev`
6. Message the bot in Slack.
