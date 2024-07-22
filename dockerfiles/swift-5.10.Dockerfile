# syntax=docker/dockerfile:1.7-labs
FROM swift:5.10-slim

WORKDIR /app

# .git & README.md are unique per-repository. We ignore them on first copy to prevent cache misses
COPY --exclude=.git --exclude=README.md . /app

RUN swift build -c release
RUN swift package clean

ENV CODECRAFTERS_DEPENDENCY_FILE_PATHS="Package.swift"

COPY . /app
