Scenario: Navigate to the website homepage
Given I am on main application page
When I verify text and url

Scenario: Log in as a Good User
Given I am on main application page
When I login as a Good user with username and password

Scenario: Log in as a Locked User
Given I am on main application page
When I login as a Locked user with username and password

Scenario: Log in as a Broken User
Given I am on main application page
When I log in as a Broken user with username and password

Scenario: Log in as a Slow User
Given I am on main application page
When I log in as a Slow user with username and password