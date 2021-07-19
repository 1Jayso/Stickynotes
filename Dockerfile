# Pull base image
FROM python:3.8.2

LABEL maintainer="Joseph Sowah" 

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /stickynotes

# # Creating Virtual Env
# ENV VIRTUAL_ENV=/stickynotes/venv
# RUN python3 -m venv $VIRTUAL_ENV
# ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
COPY requirements.txt . /stickynotes/
RUN pip3 install -r requirements.txt





# Copy project
COPY . /stickynotes/

CMD python manage.py runserver 0.0.0.0:8000