FROM node:22

# Set environment variables
ENV DISPLAY=:99.0

RUN apt-get update && apt-get install -y \
	libasound2 \
	libgbm1 \
	libgtk-3-0 \
	libnss3 \
	xvfb \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["Xvfb", ":99", "-screen", "0", "1920x1080x24"]
