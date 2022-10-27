Installation
============

Build the Docker image:

  docker build -t mcsf/whisper .


Usage
=====

Run Whisper on a URL to be fetched:

  docker run -it --rm -v "$PWD:/whisper" mcsf/whisper https://example.org/my-file.mp4


Run Whisper on a local file:

  cd my-directory
  docker run -it --rm -v "$PWD:/whisper" mcsf/whisper my-file.mp4


Invoke Whisper directly:

  docker run -it --rm -v "$PWD:/whisper" mcsf/whisper whisper


Start a shell session in the container:

  docker run -it --rm -v "$PWD:/whisper" mcsf/whisper bash
  whisper --help
