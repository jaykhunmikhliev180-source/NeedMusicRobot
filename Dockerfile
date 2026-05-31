# Pulling python docker image directly
FROM python:3.9-slim-buster


# Changing the working directory
WORKDIR /app

#  RUN apt-get update && apt-get install -y gcc python3-dev git

# Copy the requirements.txt file into working directory and install the packages
COPY requirements.txt .

RUN pip3 install -U -r requirements.txt

# Copy all the files into working directory
COPY . .

# Start the bot
CMD ["python3", "-m", "mbot"]
