# analyted-database-todo

Example of a Docker image that runs a [MSSQL](https://hub.docker.com/_/microsoft-mssql-server) and with Liquibase create and populate the database with... something inside.

## Before you start

Needed:

- [Node](https://nodejs.dev/) (and npm, of course)
- [Docker](https://www.docker.com/) installed on your system
- Logged into docker hub (for retrieving the image)
- [Java](https://www.java.com/) 11 at least. Check how to install in your system
- [Liquibase](https://www.liquibase.org/) installed on your system
- Not needed but highly recommended: [WSL on Windows](https://docs.microsoft.com/en-us/windows/wsl/install) or a Unix compatible machine (example a Mac or any Linux distribution) because we are migrating into that

## How to run this

1. Clone this
2. Run `npm install`. To install dependencies (remember conventional-commits and release process)
3. Run `npm run docker:run`. To run the docker image on your system. This will also create (if needed) the database on the docker image
4. Run `npm run liquibase:update`. To update and populate the database with data

