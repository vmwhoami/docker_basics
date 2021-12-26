 # <-- this is the base image
FROM node 

# the next line is the working directory
WORKDIR /mynodeapp


# we could have specified ./ instead of /mynodeapp 
# we copied this first because of optimisation reasons
# if we copied this
# if we would copy it after 
COPY package.json /mynodeapp


RUN npm install
# we install the dependencies

# same here we could have specified ./ instead of /mynodeapp
# copy the file structure to the container
COPY . /mynodeapp


# The next line is optional we do have to specify the port
# when we run the container docker run -p 3000:80 ImageName ("the name hash from created container from the image")
EXPOSE 80

CMD [ "node", "server.js" ]