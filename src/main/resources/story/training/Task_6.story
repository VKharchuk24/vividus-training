Meta:
    @group Training
    @requirementId MyTask-0006

Lifecycle:
Examples:
|username                |password     |
|standard_user           |secret_sauce |
|performance_glitch_user |secret_sauce |

Scenario: Navigate to the website homepage
Given I am on main application page

Scenario: Log In
When I enter `<username>` in field located by `id(user-name)`
When I enter `<password>` in field located by `id(password)`
When I click on element located by `id(login-button)`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`

Scenario: Add item to the shopping cart
When I click on element located by `id(item_<itemName>_title_link)`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory-item.html?id=<itemName>`
When I click on element located by `id(add-to-cart)`
When I click on element located by `id(back-to-products)`
Examples:
|itemName|
|4       |
|0       |
|1       |

Scenario: Validate the num of items in the shopping cart
Then number of elements found by `xpath(//span[@class='shopping_cart_badge' and text()='3'])` is = `1`


Scenario: Log Out
When I click on element located by `id(react-burger-menu-btn)`
When I click on element located by `id(reset_sidebar_link)`
When I click on element located by `id(logout_sidebar_link)`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/`
