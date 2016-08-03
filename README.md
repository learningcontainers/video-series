# LearningContainers.com Example Code and Applications

## Lesson 10 - Docker Compose

This lesson should be fairly straight forward. To launch the containers,
simply type `docker-compose up -d`.

You should be able to visit `http://localhost:8080` and get a webpage.

If port 8080 is already reserved, feel free to edit `docker-compose.yml`
to modify the section under `nginx` -> `ports`.

Any PHP and HTML files that are placed in the `html/` folder should render
under PHP 7.
