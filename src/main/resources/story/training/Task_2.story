GivenStories: story/demo/Homepage_Demo.story
Scenario: Log in as a Good User
Given I am on main application page
When I enter `${swagGoodUserName}` in field located by `id(user-name)`
When I enter `${swagPassword}` in field located by `id(password)`
When I click on element located by `id(login-button)`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
Then number of elements found by `By.className(inventory_item)` is = `6`
When I take screenshot