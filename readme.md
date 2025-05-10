# scdl-container-image
Ready to use alpine container image of the Soundcloud Music Downloader https://github.com/flyingrub/scdl

## How to use it
```
# pull and run the image and show the sctl version
docker run ghcr.io/3deep5me/scdl-container-image:latest --version
Unable to find image 'ghcr.io/3deep5me/scdl-container-image:latest:latest' locally
latest: Pulling from ghcr.io/3deep5me/scdl-container-image:latest
df9b9388f04a: Already exists
a1ef3e6b7a02: Already exists
7a687728470e: Already exists
4ecf30de1710: Already exists
a1f99e431609: Already exists
8bef3da008a7: Pull complete
595ac5e81624: Pull complete
9b4bdf26add4: Pull complete
Digest: sha256:0eb33c1b443221e5e3092f26104ed324218be6aa28035692ef4e1e08bb0775a9
Status: Downloaded newer image for ghcr.io/3deep5me/scdl-container-image:latest:latest
v2.7.1
```

## Features
* lightweight
* no dependency management needed on the host system

## Example commands 

```
# Download playlist into the current dirctory
docker run -v $(PWD):/mnt/stuff 3deep5me/scdl-container-imag -cl https://soundcloud.com/3deep5mev2/sets/underground-german-rap --flac --download-archive archiv.txt
```