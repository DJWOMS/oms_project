# Use an OS debian
#FROM debian:latest

#RUN apt update && apt install -y
FROM python:3.7.2
MAINTAINER DJWOMS <socanime@gmail.com>

RUN apt install git
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /home/root/moses_cms

COPY moses_cms manage.py req.txt /home/root/moses_cms/
WORKDIR /home/root/moses_cms
RUN pip install git+https://DJWOMS:F00dz!\@5@github.com/SGroupAM/Moses-CMS.git
RUN django-admin startproject name --template=https://DJWOMS:F00dz!\@5@github.com/SGroupAM/moses_project/archive/master.zip

#COPY . /opt/services/djangoapp/src
RUN cd name && python manage.py collectstatic --no-input

EXPOSE 8000
CMD ["gunicorn", "-c", "config/gunicorn.conf.py", "--bind", ":8000", "--chdir", "config", "config.wsgi:application"]
# Set the working directory to /app
#WORKDIR /

# Copy the current directory contents into the container at /app
#COPY . /manage

# Install any needed packages specified in requirements.txt
#RUN pip install --trusted-host pypi.python.org -r req.txt

# Make port 80 available to the world outside this container
#EXPOSE 80

# Define environment variable
#ENV NAME World

# Run app.py when the container launches
#CMD ["python", "manage.py"]