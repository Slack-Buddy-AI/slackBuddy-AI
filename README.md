# SlackBuddy AI

**An Intelligent Employee Onboarding and Knowledge Assistance System**

SlackBuddy AI is an AI-powered assistant that lives inside Slack and helps newly joined employees get up to speed. Employees ask questions in natural language and get answers drawn only from company-approved documents (HR policies, IT guides, technical resources). When the assistant is not confident, it does not guess: it escalates the question to HR or the right team member.

## Features

- **Slack onboarding assistant:** ask questions directly in Slack and get document-grounded answers
- **Retrieval-Augmented Generation (RAG):** documents are chunked, embedded, and retrieved to ground the LLM's answers
- **Admin dashboard (React):** upload and manage company documents, configure onboarding checklists, track employee progress
- **Role-based onboarding checklists and tasks**
- **Escalation to HR** for low-confidence or unanswered questions
- **Configurable LLM:** run a local open-source model (Ollama) or switch to a free-tier cloud API

## Tech Stack

| Layer | Technology |
|---|---|
| Frontend | React |
| Backend | Java, Spring Boot |
| Database | MySQL |
| AI | Spring AI, Large Language Models, vector store |
| Messaging | Slack API (Bolt, Socket Mode) |
| DevOps | Docker, GitHub Actions |

## Project Structure

```
slackbuddy-ai/
├── backend/        # Spring Boot service (REST API, Slack bot, RAG pipeline)
├── frontend/       # React admin dashboard
├── database/       # SQL schema and sample data
├── sample-docs/    # Fictional company documents for testing and demo
├── docs/           # Architecture, API docs, setup guides, screenshots
└── .github/        # Issue/PR templates and CI workflow
```

## Getting Started

### Prerequisites
- Java 17+ and Maven
- Node.js 18+
- Docker (for MySQL)
- A free Slack workspace and a Slack app (see `docs/slack-setup-guide.md`)
- Ollama (optional, for a fully local LLM)

### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/<your-org>/slackbuddy-ai.git
   cd slackbuddy-ai
   ```
2. Copy the environment template and fill in your values:
   ```bash
   cp .env.example .env
   ```
3. Start MySQL:
   ```bash
   docker compose up -d
   ```
4. Run the backend:
   ```bash
   cd backend
   mvn spring-boot:run
   ```
5. Run the frontend:
   ```bash
   cd frontend
   npm install
   npm run dev
   ```
6. Open Slack and message the SlackBuddy bot.

More detail is in [`docs/setup-guide.md`](docs/setup-guide.md).

## How It Works

1. HR uploads company documents through the admin dashboard.
2. The backend splits documents into chunks, creates embeddings, and stores them in a vector store.
3. An employee asks a question in Slack.
4. The system retrieves the most relevant chunks and sends them, with the question, to the LLM.
5. The answer is returned in Slack. If confidence is low, the question is escalated to HR and logged.

## Documentation

- [Abstract](docs/abstract.md)
- [Architecture](docs/architecture.md)
- [API documentation](docs/api-documentation.md)
- [Slack setup guide](docs/slack-setup-guide.md)
- [Local setup guide](docs/setup-guide.md)

## Branching

- `main`: stable, demo-ready
- `develop`: integration branch
- `feature/<name>`: individual features

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Team

| Name | Role |
|---|---|
| _Your name_ | _Role_ |
| _Teammate name_ | _Role_ |

## Roadmap

- [x] Project setup and repository structure
- [ ] Database schema and entities
- [ ] Document upload and RAG pipeline
- [ ] Slack bot integration
- [ ] Admin dashboard
- [ ] Onboarding checklists and progress tracking
- [ ] Escalation workflow
- [ ] Testing and demo preparation

## License

Released under the [MIT License](LICENSE).
