# dirbuster

[Kali Linux](https://www.kali.org/) based [`dirbuster`](https://tools.kali.org/web-applications/dirbuster) docker image.

## Usage

1. Build the `dirbuster` image: `docker build --rm -t dirbuster`
1. Run the container sharing the hosts X Server: `docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --name dirbuster dirbuster`

**Note**: in case of `No protocol specified` errors you could disable host checking with `xhost +` but there is a warning to that (`man xhost` for additional information).
