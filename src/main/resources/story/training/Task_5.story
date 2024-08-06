Scenario: Navigate to the website homepage
Given I am on main application page
When I log in as a good user with username and password
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
Then number of elements found by `By.className(inventory_item)` is equal to `6`


Scenario: Log in as Locked User
Given I am on main application page
When I log in as a locked user with username and password
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
Then number of elements found by `By.className(inventory_item)` is equal to `6`