# Chat Application
Welcome to the MessageMe Chat Application! This is a real-time chat application built using Ruby on Rails. 
It allows users to register, login, and chat with each other in real-time.

## Table of Contents
* Features
* Installation
* Setuo

## Features
* User Authentication: Sign up, login, and logout functionality.
* Real-time Messaging: Instant messaging using ActionCable.
* Chat Rooms: Users can join chat rooms to have group conversations.
* User Profiles: Each user has a profile page.

## Installation
### Prerequisites
Make sure you have the following installed:

* Ruby (version 2.7.6)
* Rails (version 7.0.6)

## Setup
 1. Clone the repository:
    ````shell
    git clone https://github.com/dashprasad23/MessageMe.git
    cd chat-application
    ````
 2. Install the required gems:
    ````shell
    bundle install
    ````
3. Setup the database:
   ````shell
    rails db:create
    rails db:migrate
    ````
4. Start the Rails server:
     ````shell
    rails server
    ````
5. Open your browser and navigate to http://localhost:3000.


