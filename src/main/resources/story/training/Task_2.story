GivenStories: story/demo/Homepage_Demo.story

Scenario: Log in as a Good User
Given the user is on the login page
When the user logs in with username ${good_username} and password ${good_password}
Then the user should see the homepage

Then the page should contain exactly 6 inventory items
Then take a screenshot of the inventory page
