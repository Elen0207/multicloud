- Crie (Build) a Docker image

```bash
docker build -t app:1.0 .
docker image ls
```

- Teste a imagem localmente no Cloud Shell

```bash
docker container run --name app -p 5000:5000 app:1.0
docker container ls 
docker container ls --all
docker container start app
docker container stop app
```

- Adicione tag a imagem

```bash
docker tag app:1.0 us.gcr.io/<ID_PROJETO>/app
```

- Suba (Push) a imagem para Container Registry na Google Cloud

```bash
docker push us.gcr.io/<ID_PROJETO>/app
```

- Faça o deploy da aplicação em container no Google Cloud Run usando a imagem criada