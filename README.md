# [Udagram](http://udagram-anas.s3-website-us-east-1.amazonaws.com)

This application is provided to you as an alternative starter project if you do not wish to host your own code done in the previous courses of this nanodegree. The udagram application is a fairly simple application that includes all the major components of a Full-Stack web application.

## Getting Started

1. Clone this repo locally into the location of your choice.
1. Move the content of the udagram folder at the root of the repository as this will become the main content of the project.
1. Open a terminal and navigate to the root of the repo
1. follow the instructions in the installation step

The project can run but is missing some information to connect to the database and storage service. These will be setup during the course of the project

### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.

```

## Environment Variables

The API relies on several environment variables to function. `dotenv` is already included in the `package.json`file, so it is only necessary to create a `.env` file with the following variables:

| Name                  |                         Value                         |
| --------------------- | :---------------------------------------------------: |
| POSTGRES_HOST         |         The url of the RDS database instance          |
| POSTGRES_DB           |                       postgres                        |
| POSTGRES_USERNAME     | The username specified when creating the RDS instance |
| POSTGRES_PASSWORD     | The password specified when creating the RDS instance |
| DB_PORT               |  The port of the RDS db instance (5432 for postgres)  |
| AWS_REGION            |  The AWS region you used to provision RDS, S3 and EB  |
| AWS_PROFILE           |                   Your AWS profile                    |
| AWS_BUCKET            | The name of the S3 bucket used to host the front end  |
| AWS_ACCES_KEY_ID      |                 Your AWS acces key ID                 |
| AWS_SECRET_ACCESS_KEY |              Your AWS secret access key               |
| JWT_SECRET            |                         Token                         |

**IMPORTANT: .env should be added to .gitignore and never committed to a public repo.**

---

### Installation

Provision the necessary AWS services needed for running the application:

1. In AWS, provision a publicly available RDS database running Postgres.
1. In AWS, provision a s3 bucket for hosting the uploaded files.
1. Export the ENV variables needed or use a package like [dotnev](https://www.npmjs.com/package/dotenv)/.
1. From the root of the repo, navigate udagram-api folder `cd udagram-api` to install the node_modules `npm install`. After installation is done start the api in dev mode with `npm run dev`.
1. Without closing the terminal in step 1, navigate to the udagram-frontend `cd udagram-frontend` to intall the node_modules `npm install`. After installation is done start the api in dev mode with `npm run start`.

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)

# Building Badge:

[![Udagram-Anas](https://circleci.com/gh/circleci/circleci-docs.svg?style=svg)](https://app.circleci.com/pipelines/github/Mahmoud85/udagram-full)
