# A Dockerfile is used to define how your code will be packaged. This includes
# your code, the base image and any additional dependencies you need.

# First we choose the base image. For more info, see: 
# https://github.com/waggle-sensor/plugin-base-images
# FROM waggle/plugin-base:1.1.0-ml-cuda11.0-amd64
FROM waggle/plugin-base:0.1.0

# Now we include the Python requirements.txt file and install any missing dependencies.
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

# Finally, we include our code and specify what command should be run to execute it.
COPY main.py .
COPY test.py .
COPY test.jpg .
COPY profile.py .

#CMD [ "python3","profile.py" ]
