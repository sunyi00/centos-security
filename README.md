## USAGE

### 1. skipfish

>docker run -ti sunyi00/centos-security:1.0.0 bash

```
cd /skipfish && \
touch ./output.wl && \
./skipfish -S ./dictionaries/minimal.wl -W ./output.wl -Y -o ./report http://www.baidu.com
```
