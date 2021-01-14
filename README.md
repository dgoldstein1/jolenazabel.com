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

