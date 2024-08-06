Scenario: Navigate to the website homepage
Given I am on main application page
When I ${visual-action} baseline with name `loginPage1` ignoring:
|ACCEPTABLE_DIFF_PERCENTAGE|
|5                         |

Scenario: Log in as a User
Given I am on main application page
When I log in as a user with username and password
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
When I ${visual-action} baseline with name `homepage1` ignoring:
|ELEMENT								   |ACCEPTABLE_DIFF_PERCENTAGE|
|By.xpath(//*[@class="inventory_item_img"])|7                         |