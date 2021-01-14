# jolenazabel.com
Website hosted at jolenazabel.com

## Dev

```bash
(cd hugo-identity-theme/jolenazabel.com && hugo serve -w)
```

## Build

```bash
(cd hugo-identity-theme/jolenazabel.com/ && hugo)
export $(cat VERSION | grep VERSION)
docker build . -t dgoldstein1/jolenazabel:$VERSION
```

## Deploy to Heroku

```bash
export $(cat VERSION | grep VERSION)
docker login --username=_ --password=$(heroku auth:token) registry.heroku.com

docker tag \
 	dgoldstein1/jolenazabel:$VERSION \
 	registry.heroku.com/jolenazabel/web

docker push registry.heroku.com/jolenazabel/web

heroku container:release web --app jolenazabel
```

## Deploy Visit Server Backend
```bash
docker login --username=_ --password=$(heroku auth:token) registry.heroku.com

docker tag \
 	dgoldstein1/websiteanalyitcs-backend:0.1.1 \
 	registry.heroku.com/jolenazabel-visitserver/web

docker push registry.heroku.com/jolenazabel-visitserver/web

heroku container:release web --app jolenazabel-visitserver
```