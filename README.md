## PatPat 

This repo contains the code for the Patpat website and API.

## Contributing

### Dev environment setup

Make sure you have Docker and Docker Compose installed on your machine. If not, you can download Docker [here](https://www.docker.com/get-started) and Docker Compose [here](https://docs.docker.com/compose/install/).

Follow these steps to set up the development environment after cloning the repository:

1. Run `make up` to initialize the Docker containers.
    - This will create the following services using docker-compose:
        - Webserver
        - MySQL database
        - Laravel worker service for handling asynchronous jobs
        - Vite worker for building CSS & JS assets and enabling hot-reload
2. Set up the required base ENV variables.

Once you have completed the above steps, you will be able to access the website through `http://localhost`.

### Common commands

- To connect to the API container, run `docker-compose exec api sh`.
- To connect to the DB container, run `docker-compose exec db mysql -u root -p`.

