# Microservices with Docker

### Docker Image

You can find the Docker image for this project on [Docker Hub](https://hub.docker.com/r/neelamdeka20/breast_cancer/).

## Steps with commands

1.	Host a Ubuntu Virtual Machine using Oracle VM Virtual Box  
  •	Downloaded and installed Oracle VM VirtualBox.  
 	•	Created a new virtual machine with Ubuntu as the guest OS.  
 	•	Set up the VM.  
 
2.	Set up Visual Studio code on Ubuntu VM  
  •	sudo snap install --classic code

3.	Set up Python  
  •	sudo apt-get install python3-pip
 
4.	Clone this Github repositoryhttps://github.com/Vikas098766/Microservices.git  
  •	git clone https://github.com/Vikas098766/Microservices.git

5.	Create a Virtual Environment  
  •	cd Microservices  
  python3 -m venv venv
 
6.	Install the dependencies from requirements.txt file   
  •	source venv/bin/activate  
 	•	pip install -r requirements.txt

7.	Train and save the model  
  •	python code_model_training/train.py
 
8.	Test the Flask web application  
  •	Tested the links on web browser

9.	Test the application and make predictions using the example calls available in the folder/tests  
  •	curl -d '[{"radius_mean": 17.99, "texture_mean": 10.38, "perimeter_mean": 122.8, "area_mean": 1001.0, "smoothness_mean": 0.1184, "compactness_mean": 0.2776, "concavity_mean": 0.3001, "concave points_mean": 0.1471, "symmetry_mean": 0.2419, "fractal_dimension_mean": 0.07871, "radius_se": 1.095, "texture_se": 0.9053, "perimeter_se": 8.589, "area_se": 153.4, "smoothness_se": 0.006399, "compactness_se": 0.04904, "concavity_se": 0.05373, "concave points_se": 0.01587, "symmetry_se": 0.03003, "fractal_dimension_se": 0.006193, "radius_worst": 25.38, "texture_worst": 17.33, "perimeter_worst": 184.6, "area_worst": 2019.0, "smoothness_worst": 0.1622, "compactness_worst": 0.6656, "concavity_worst": 0.7119, "concave points_worst": 0.2654, "symmetry_worst": 0.4601, "fractal_dimension_worst": 0.1189}]' \  
     -H "Content-Type: application/json" \  
    -X POST http://0.0.0.0:5000/predict  
 	•	curl -X GET http://localhost:5000/info  
 	•	curl -X GET http://localhost:5000/health

10.	Create a docker image containing everything needed to run the application.  
  •	docker build -t breast_cancer

11.	Run the containerized application as a prediction service and test it locally by passing some example calls and get the prediction.  
  •	docker run -p 5000:5000 breast_cancer
 
 
