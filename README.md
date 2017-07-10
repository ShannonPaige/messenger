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

## Design Overview

#### Real time communication
- I began this challenge by researching Action Cable, a feature that released with Rails 5 that integrates Web Sockets into a Rails app. I have never used it before, but had heard about its capabilities and thought it might be the best solution.

#### Database
- Next I drew out the database schema on paper. I knew that there would need to be Users and Messages, so I decided to start with those two models as my MVP. A user has many messages and each message belongs to 2 users.
- Since the spec said not to worry about users, I seeded the database with 3 users.


## Limitations

## Edge Cases

## Features to Add

## To Run Anagrams-Shannon-Paige
### Locally


### On Heroku
