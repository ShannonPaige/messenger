# Messenger
---

Messenger is simple messenger web app that allows two users to send short text messages to each other, like Facebook Messages app or Google Chat.
- It's possible to type a short message and have it sent to another user
- It's possible to see messages sent from another user appear reasonably soon after they were sent

## Implementation details

#### Tools:
- Rails
- PostgreSQL
- RSPEC

#### Tests
- To run the tests, the server must be running for the controller tests to pass: `rails server -e test`
- Run the command `rspec` to see all the tests run

## Design Overview

#### Real time communication
- I began this challenge by researching Action Cable, a feature that released with Rails 5 that integrates Web Sockets into a Rails app. I have never used it before, but had heard about its capabilities and thought it might be the best solution.

#### Database
- Next I drew out the database schema on paper. I knew that there would need to be Users and Messages. A user has many messages and each message belongs to 2 users.


## Features to Add
- More testing, especially sad paths
- Prettier UI
- Instead of giving a user a list of all other users, let them search for members and add them to a favorites list.
- Highlight which conversations have new messages waiting.

## To Run Messenger
### Locally
- Clone the project
- Run bundle install to install the required gems
- Set up the database with `rake db:create db:migrate`
- Seed the database with `rake db:seed`
  - This sets up three users with sample messages for demo purposes
- Start the server with rails s
- Visit http://localhost:3000
- Login with any of the sample users:
  - name: Alice password: password
  - name: Bob password: password
  - name: Eve password: password

### On Heroku
