group "default" {
  targets = ["frontend"]
}

target "frontend" {
  context = "."
  dockerfile = "frontend/dockerfile/cmd/dockerfile-frontend/Dockerfile"
  tags = [
    "ghcr.io/louisbrunner/dockerfile-symlinks:1.0.0",
    "ghcr.io/louisbrunner/dockerfile-symlinks:1.0",
    "ghcr.io/louisbrunner/dockerfile-symlinks:1",
    "ghcr.io/louisbrunner/dockerfile-symlinks",
  ]
  platforms = [
    "linux/386",
    "linux/amd64",
    "linux/arm/v7",
    "linux/arm64",
    "linux/mips",
    "linux/mipsle",
    "linux/mips64",
    "linux/mips64le",
    "linux/s390x",
    "linux/ppc64le",
    "linux/riscv64",
  ]
  annotations = {
    "dockerfile-syntax": "1.5.2",
    "org.opencontainers.image.description": "A dockerfile frontend with supports for a --no-follow-symlinks flag on COPY/ADD, based on docker/dockerfile:1.5.2",
    "org.opencontainers.image.source": "https://github.com/LouisBrunner/buildkit",
  }
  labels = {
    "dockerfile-syntax": "1.5.2",
    "org.opencontainers.image.description": "A dockerfile frontend with supports for a --no-follow-symlinks flag on COPY/ADD, based on docker/dockerfile:1.5.2",
    "org.opencontainers.image.source": "https://github.com/LouisBrunner/buildkit",
  }
}
