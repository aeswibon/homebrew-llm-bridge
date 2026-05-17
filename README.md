# llm-bridge-homebrew

The official Homebrew tap for **AI IDE Bridge** (`llm-bridge`).

AI IDE Bridge is a local HTTP server that translates OpenAI-compatible API requests into provider-specific calls (Cursor SDK, GitHub Copilot, Windsurf), enabling any OpenAI-format client to use any AI IDE's model catalog.

## Installation

To install `llm-bridge` via Homebrew on macOS (Apple Silicon or Intel), run:

```bash
brew tap aeswibon/llm-bridge-homebrew
brew install llm-bridge
```

## Upgrading

To upgrade to the latest release:

```bash
brew upgrade llm-bridge
```

## Quick Start

### 1. Initialize

```bash
llm-bridge init
```

This interactive wizard will help you configure your AI IDE providers (Cursor, Copilot, Windsurf) and collect your API tokens.

### 2. Start the Bridge

```bash
llm-bridge start
```

The server starts on `http://127.0.0.1:3849` by default.

### 3. Configure your Client

```bash
llm-bridge configure
```

This injects the llm-bridge provider into your `opencode.json`.

## Running as a Background Service

To start `llm-bridge` automatically at login as a macOS LaunchAgent:

```bash
llm-bridge install-daemon
```

To stop and remove the background service:

```bash
llm-bridge uninstall-daemon
```

## Documentation & Support

For full documentation, architecture diagrams, plugin development guides, and troubleshooting, please visit the main repository:

👉 [https://github.com/aeswibon/llm-bridge](https://github.com/aeswibon/llm-bridge)

## License

MIT
