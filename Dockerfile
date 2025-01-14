FROM node:20

RUN apt-get update && apt-get install -y --no-install-recommends \
	libasound2 \
	libgbm1 \
	libgtk-3-0 \
	libnss3 \
	xvfb \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

