# README
<div align="center">
  <img src="http://www.clker.com/cliparts/f/3/d/4/15163423931415668556clipart-tea-party-invitation.med.png" alt="tea_party" width="50%">

---

  <p align="center">
Tea Subscription Service API
This is a Rails API for a Tea Subscription Service.  Its's part of my take home challenge for Turing. This challenge provides endpoints to manage customer tea subscriptions. With this API, you can subscribe a customer to a tea subscription, cancel a customer's tea subscription, and retrieve all of a customer's subscriptions, including active and cancelled ones.

  </p>
</div>

### Built With:

![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white) 
![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white) 
![Postgresql](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)

### Requirements:
To run this API, you need to have the following requirements met:

Ruby (version 2.7.2 or higher)
Ruby on Rails (version 6.1.4 or higher)
PostgreSQL (version 10 or higher)

### Getting Started:
Follow the steps below to set up and run the Tea Subscription Service API on your local machine:

1. git clone https://github.com/your-username/tea_subscription_service.git

2. cd tea_subscription_service

3. bundle install

4. rails db:create
5. rails db:migrate

6. rails server

7. The API should now be running at http://localhost:3000. You can test the endpoints using a tool like cURL or Postman.

### API Endpoints:
1. Subscribe a Customer to a Tea Subscription
- Endpoint: POST /api/v1/customers/:customer_id/subscriptions

- Use this endpoint to subscribe a customer to a tea subscription. Provide the necessary details in the request body.

2. Update a Customer's Tea Subscription
- Endpoint: PUT /api/v1/subscriptions/:id

- Use this endpoint to cancel a customer's tea subscription. Specify the subscription ID in the request path.

3. Get All Customer Subscriptions
- Endpoint: GET /api/v1/customers/:customer_id/subscriptions

- Use this endpoint to retrieve all of a customer's subscriptions, including both active and cancelled ones. Specify the customer ID in the request path.

### Data Details
The Tea Subscription Service API deals with the following data:

1. Tea
- Title: The title of the tea.
- Description: Description of the tea.
- Temperature: The recommended temperature for brewing the tea.
- Brew Time: The recommended brew time for the tea.
2. Customer
- First Name: The customer's first name.
- Last Name: The customer's last name.
- Email: The customer's email address.
- Address: The customer's address.
3. Subscription
- Title: The title of the subscription.
- Price: The price of the subscription.
- Status: The status of the subscription (active or cancelled).
- Frequency: The frequency of the subscription (e.g., weekly, monthly).

** Please add any other attributes you need

### Testing:
To run the test suite for the API, execute the following command:
- bundle exec rspec

The test suite includes unit tests for models, request specs for API endpoints, and integration tests.

<h2 id="contact">Contributor</h2>

| | <div align="center">[<img alt="Huy Phan" width="75" src=".github/Huy.png"/>](https://www.linkedin.com/in/huy-phan-2471b3261/)</div> | |
| ------------------ | ------------ | -------------- | 
| | <h3 align="center">Huy Phan <img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExOGQzYjI0ZDBjNzMzYzg4MWYyZGI4OTRjNjQyNDYxNWY3Nzc1ODEwNCZlcD12MV9pbnRlcm5hbF9naWZzX2dpZklkJmN0PXM/LreyUiYrkrMieDfCcy/giphy.gif" width="40"></h3> | |

| | ✨ Connect via: [LinkedIn](https://www.linkedin.com/in/huy-phan-2471b3261/) 
| | ✨ See more beautiful code: [GitHub](https://github.com/HuyPhan2025)| |