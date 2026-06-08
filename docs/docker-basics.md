# Docker Basics Foundation

## Goal

Understand Docker as a local container runtime used in DevOps workflows.

## Core Concepts

## Docker Client

The `docker` command is the client. It sends requests to the Docker daemon.

## Docker Daemon

The Docker daemon runs in the background and manages images, containers, networks, and volumes.

## Image

An image is a packaged filesystem and metadata used to create containers.

## Container

A container is a running process created from an image.

## Important Test

The command below verifies that Docker can pull and run a container:

```bash
docker run --rm hello-world
