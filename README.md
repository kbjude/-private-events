## PRIVATE-EVENTS
This is a collaborative project but worked on individually to create a Private Events page which allows users to create account and events, along with session creation and destruction. At the end of the project, the user should view past events, upcoming and all the events on the index page.

### Requirements
Download the application and ensure that you have Ruby installed.
Install rails 5.2.3 if you haven't yet done it.
To Intsall rails run the gem install rails -v '5.2.3' command.

### Features
Some of the features of this project include:
  - User Signup. 
  - User Login.
  - List of Events.
  - Event creation.

### User authentication and Authorisation using session id
  - Users are created using the signup feature.
  - They get to signin.
  - Every action is dependent on a logged user apart from the index page.     

### Using the System
  - Run rails to start the server.
  - Type localhost:3000 in the URL.
  - Create an account and signin with that account.
  - The rest, follow the UI for what you want to do.
  
## TESTING
  - Tests written for: 
      - Event.
      - AttendedEvent.
      - Users.
      
  - Running the Tests:
  The tests are written using Rspec and because of that:
    - The tests can be run using rspec command.

Display of past event and upcoming events on both user page and events page.

Technologies Used
Rails for Ruby

### Contributors
Jude Kajura

GitHub: @kbjude

[![Maintainability](https://api.codeclimate.com/v1/badges/d847c24cb730a50b3773/maintainability)](https://codeclimate.com/github/kbjude/-private-events/maintainability)

[![Test Coverage](https://api.codeclimate.com/v1/badges/d847c24cb730a50b3773/test_coverage)](https://codeclimate.com/github/kbjude/-private-events/test_coverage)
