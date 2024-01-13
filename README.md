# Cashmere Events

Welcome to the Cashmere! This Rails application is designed to help you manage and organize events seamlessly.

## Overview

The Event Management project is built using Ruby on Rails, providing a robust platform for creating, updating, and managing various events. Whether you're hosting conferences, meetups, or parties, this application has got you covered.

## Features

- **Event Creation:** Easily create new events with details like title, description, date, time, and location.
- **User Registration:** Users can register for events, and event organizers can keep track of attendees.
- **Categories:** Classify events into different categories for better organization.
- **Responsive Design:** A user-friendly interface that works well on both desktop and mobile devices.
- **Authentication and Authorization:** Secure user authentication and authorization for managing events.
-  **Payment gateway:** I have used Stripe for seamless payment experience.
-  - **Cart:** For serving tickets to users on first come first basis i have implmented cart functionality which will empty once you logout so that other people can also buy tickets if you are not.

## Getting Started

Follow these steps to get the project up and running:

1. **Install dependencies:**
    ```bash
    bundle install
    ```

2. **Set up the database:**
    ```bash
    rails db:migrate
    ```

3. **Run the Rails server:**
    ```bash
    rails server
    ```

4. Visit [http://localhost:3000](http://localhost:3000) in your browser to access the application.

## Usage

- Create an account or log in if you already have one.
- Explore the dashboard to view and manage events.
- Create new events or register for existing ones.
- Manage categories to better organize events.

## Contributing

If you have suggestions, find issues, or want to contribute to the project, please open an issue or submit a pull request. Your contributions are welcome!
