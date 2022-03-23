# How to push an image to the GitHub Container Registry (ghcr.io) ?

## 1 - Login

```bash
docker login ghcr.io -u <your-github-username> -p <your-github-personal-access-token-or-password>
```

## 2 - Locally build Heart's docker image

```bash
docker-compose build # see Dockerfile and docker-compose.yaml
```

## 3 - Run a local instance of image
```bash
docker run --rm -i ghcr.io/fabernovel-fnguyen/heart:latest <your-heart-options>
```

## 4 - Pushing a new image / an update for an existing image

```bash
docker push <your-image-name>
# example: docker push ghcr.io/fabernovel-fnguyen/heart:latest
```