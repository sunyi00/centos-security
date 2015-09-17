## USAGE

>docker run -ti sunyi00/centos-security:1.0.0 bash

### 1. skipfish

>[site](https://github.com/spinkham/skipfish)

```
cd /skipfish && \
touch ./output.wl && \
./skipfish -S ./dictionaries/minimal.wl -W ./output.wl -Y -o ./report http://www.baidu.com
```

### 2. sqlmap

>[site](https://github.com/sqlmapproject/sqlmap)

```
cd /sqlmap && \
python sqlmap.py -hh
```

### 3. phantomjs

>[site](http://phantomjs.org/)

```
主要用于配合 [ZAProxy](https://github.com/zaproxy/zaproxy)
```
