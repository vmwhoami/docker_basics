FROM node:14

WORKDIR /app

# copy the package json file to the root of the project
# this could have been written as COPY package.json /app
COPY package.json .

RUN npm install
# next line copies the content of where this file is located(Dockerfile) to workdirfolder (/app)
COPY . .

EXPOSE 80

CMD [ "node", "server.js" ]

#Commands to build the image 
# -t, --tag list                Name and optionally a tag in the 'name:tag' format
#docker build -t <image_name> .    #builds the image 
#docker build -t node-app .

#Commands to run the image
#docker run -p 3000:80 -d --name <container_name_> --rm <image_name>

#Bind mount command
# docker run -p 3000:80 -d --name my_container --rm -v /home/vmwhoami/Desktop/docker_training/:/app modulethree