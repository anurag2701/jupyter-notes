# Use the official Jupyter Notebook base image
FROM jupyter/base-notebook:latest

# Set the working directory in the container
WORKDIR /home/jovyan/work

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the required Python packages
RUN pip install -r requirements.txt

# Expose the port for Jupyter Notebook
EXPOSE 8888

# Set a default command for running the Jupyter Notebook
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]
