# Obsidian Docker Management Daemon

## Overview
The **Obsidian Docker Management Daemon** is a server application built to simplify the management of Docker containers via a RESTful API. Designed primarily for Ubuntu and compatible with Windows, this Daemon allows programmatic control of container creation, starting, stopping, and deletion, making it suitable for integration with hosting panels or custom container orchestration solutions.

## Features
- **Cross-Platform Support**: Primarily for Ubuntu, but compatible with Windows through Docker Desktop.
- **API-Based Management**: Create, start, stop, and delete Docker containers with HTTP requests.
- **Configurable and Lightweight**: Minimal resource usage with flexibility to run as a background service.

## Requirements
- **Operating System**: Ubuntu 24.02 | Windows WSL2
- **Docker**: Ensure Docker is installed on the system (Docker Desktop for Windows, Docker Engine for Ubuntu).
- **Python 3.x**
- **Flask**: For the RESTful API server.
- **docker-py**: Python Docker SDK to interact with the Docker API.

## Installation
```
 curl -sL https://raw.githubusercontent.com/choice21hax/obsidiandaemon/main/install.sh | bash
```

## Contribution
 - **Make a Pull Request**: Make a fork and submit a pull request! Thanks!
 - **Make An Issue**: Make an issue if you encounter one!
