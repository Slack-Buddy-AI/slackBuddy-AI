# Slack Setup Guide

1. Create a free Slack workspace at slack.com.
2. Go to https://api.slack.com/apps -> Create New App -> From scratch.
3. Enable **Socket Mode** and generate an App-Level Token (`connections:write`). This is `SLACK_APP_TOKEN`.
4. Under **OAuth & Permissions**, add bot scopes such as `chat:write`, `app_mentions:read`, `im:history`, `im:read`, `im:write`, `users:read`.
5. Under **Event Subscriptions**, subscribe to bot events: `message.im`, `app_mention`.
6. Install the app to your workspace and copy the Bot User OAuth Token. This is `SLACK_BOT_TOKEN`.
7. Put both tokens in your local `.env` file. Never commit them.
