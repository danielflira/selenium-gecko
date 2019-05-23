# selenium-gecko

Image with xvfb, x11vnc, firefox-esr, python3 and selenium

### building

```
docker build -t selenium-gecko .
```

### running

```
docker run --rm -ti --shm-size 2g -p 5900:5900 -v ${PWD}:/local selenium-gecko python3 /local/programa.py
```
