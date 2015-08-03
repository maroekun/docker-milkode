# docker-milkode

## Usage

### build & run

```
$ docker build -t local/milkode .
$ docker run --rm -i -t -p 9292:9292 local/milkode
```

* `packages/*`
    * milk add targets.

### on boot2docker(OS X)

```
$ VBoxManage controlvm "boot2docker-vm" natpf1 "milkode,tcp,127.0.0.1,9292,,9292"
```

### open webpage

```
http://localhost:9292/
```
