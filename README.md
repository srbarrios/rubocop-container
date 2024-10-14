# How to build a Rubocop container

For Ruby 2.5.9
```
 ~  docker build --target ruby25 -t srbarrios/rubocop:ruby-2.5.9 --build-arg RUBY_VERSION=2.5.9 ./
```

For Ruby 3.x
```
docker build --target ruby3 -t srbarrios/rubocop:ruby-3.3 --build-arg RUBOCOP_VERSION=1.66.1 --build-arg RUBY_VERSION=3.3.0 ./
```

## How to push it to a registry

```
docker login <DOCKER_REGISTRY>
docker tag <IMAGE_ID> srbarrios/rubocop:ruby-2.5.9
docker push srbarrios/rubocop:ruby-2.5.9
```


## How to use it

```
docker run --rm --volume "$PWD:/app" <DOCKER_REGISTRY>/srbarrios/rubocop:ruby-3.3
```