FROM ghcr.io/typst/typst:latest AS typst
FROM mcr.microsoft.com/devcontainers/base:ubuntu

COPY --from=typst /bin/typst /usr/local/bin/typst
