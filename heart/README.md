# How to push an image to the GitHub Container Registry (ghcr.io) ?

## 1 - Login

```bash
docker login ghcr.io -u <your-github-username> -p <your-github-personal-access-token-or-password>
```

## 2 - Locally build Heart's docker image

```bash
# see Dockerfile and docker-compose.yaml
docker-compose build
```

## 3 - Run a local instance of image
```bash
# You must specify the Heart modules to be used for a given analysis. Only Heart-CLI will be used in all cases.
docker run 
    --rm -i ghcr.io/fabernovel-fnguyen/heart:latest
    -e USE_DAREBOOST=true
    -e USE_SLACK=true
    <your-heart-options> # ex: --inline '{"url":"https://about.gitlab.com/"}'
```

## 4 - Pushing a new image / an update for an existing image

```bash
# example: docker push ghcr.io/fabernovel-fnguyen/heart:latest
docker push <your-image-name>
```