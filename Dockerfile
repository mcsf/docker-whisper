FROM python
RUN python3 -m pip install git+https://github.com/openai/whisper.git
RUN apt-get update && apt-get install -y ffmpeg
COPY run.sh /
RUN chmod +x /run.sh
WORKDIR /whisper
ENTRYPOINT ["/run.sh"]
