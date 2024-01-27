# Use the official Python image as a base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /Microservices

# Copy the application code to the container
COPY . /Microservices

# Install virtualenv
RUN pip install virtualenv

# Create and activate the virtual environment
RUN virtualenv env
RUN . env/bin/activate

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port that Flask will run on
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]

