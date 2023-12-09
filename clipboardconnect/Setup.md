# Comprehensive Setup Guide for Clipboard Connect with Redis on Docker
## Introduction
This guide provides detailed steps for setting up the Clipboard Connect plugin for Minecraft with Redis. Choose from several setup options, with a preference for the automated setup process using Docker Compose.

## Contents
- [Prerequisites](#prerequisites)
- [Redis Setup Options](#redis-setup-options)
    - [Option B: Automated Docker Compose Setup (Preferred)](#option-b-automated-docker-compose-setup-preferred)
    - [Option A: Manual Docker Compose Setup](#option-a-manual-docker-compose-setup)
    - [Option C: Redis as a System Package](#option-c-redis-as-a-system-package)
- [Configuring Clipboard Connect](#configuring-clipboard-connect)
- [Verifying the Setup](#verifying-the-setup)
- [Conclusion](#conclusion)

## Prerequisites
- Docker and Docker Compose installed on your server (for Docker options). [Docker Installation Guide](https://docs.docker.com/get-docker/) | [Docker Compose Installation Guide](https://docs.docker.com/compose/install/)
- Access to a terminal and appropriate permissions to install system packages (for the system package option).
- Paper server version 1.20 or higher.
- WorldEdit plugin installed on your Minecraft server.

## Redis Setup Options

### Option B: Automated Docker Compose Setup (Preferred)
This option uses the Clipboard Connect setup command to automatically generate the `docker-compose.yml` file and configure Redis, simplifying the setup process.

#### B.1 Running Setup Command
In-game, use the `/clipboardconnect setup` command. Follow the on-screen instructions to automatically generate the Docker Compose file and start Redis.

### Option A: Manual Docker Compose Setup
For those who prefer manual configuration, create and configure a Redis instance using Docker Compose.

#### A.1 Creating a Redis Docker Container
Create a `docker-compose.yml` file with the following content:

```yaml
version: '3'
services:
  redis:
    image: redis:latest
    restart: always
    ports:
      - "6379:6379"
    volumes:
      - redis-data:/data

volumes:
  redis-data:
```

#### A.2 Starting Redis
Run `docker-compose up -d` in the directory with your `docker-compose.yml` file.

### Option C: Redis as a System Package
Alternatively, install Redis directly on your system using package management tools.

#### C.1 Installing Redis
On Ubuntu, for example, use:

```bash
sudo apt-get update
sudo apt-get install redis-server
```

#### C.2 Configuring Redis
Ensure Redis is configured to start on boot and adjust settings as needed.

## Configuring Clipboard Connect
After setting up Redis, configure Clipboard Connect to use this Redis instance. Use the `/clipboardconnect setup` command in-game.

## Verifying the Setup
Test saving and loading clipboards to ensure successful connectivity and functionality with Redis.

## Conclusion
Your Clipboard Connect is now running with Redis, providing a robust solution for clipboard synchronization. Keep your Docker images, system packages, and Clipboard Connect plugin updated.
