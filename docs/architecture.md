# Architecture

## Components
1. Slack (employee interface) <-> Slack Bolt (Socket Mode) in the Spring Boot backend
2. Spring Boot REST API <-> React admin dashboard
3. MySQL: employees, roles, checklists, tasks, documents metadata, query logs, escalations
4. Vector store: document chunk embeddings
5. LLM + embedding model via Spring AI (Ollama locally, or a free API tier)

## RAG flow
Upload document -> split into chunks -> embed -> store in vector store.
Slack question -> embed -> retrieve top-k chunks -> prompt LLM with context -> answer.
If retrieval confidence is low -> escalate to HR and log in `escalations`.

(Add the architecture diagram image here: `architecture-diagram.png`)
