FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the YOLOv5 model and requirements.txt
COPY detect.py /app/
COPY requirements.txt /app/

# Install dependencies
RUN pip install -U -r requirements.txt

# Expose a port (if needed)
EXPOSE 8000

# Run your YOLOv5 script when the container starts
CMD ["python", "./yolov5-master/detect.py"]