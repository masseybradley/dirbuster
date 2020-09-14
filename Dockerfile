FROM kalilinux/kali

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        dirbuster=1.0-1kali3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["dirbuster"]
