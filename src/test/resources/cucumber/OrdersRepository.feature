Feature: Check OrdersRepository

# Test getAllOrders
  Scenario: getAllOrders returns list of orders
    Given mock OrdersRepository is initialized
    When getAllOrders() is called
    Then getAllOrders returns a list of orders

# Test getTotalSold
  Scenario: getTotalSold returns total sold
    Given mock OrdersRepository is initialized
    When getTotalSold() is called
    Then getTotalSold returns total sold

# Test getOrderById
  Scenario: getOrderById returns list of orders
    Given mock OrdersRepository is initialized
    When getOrderById() is called
    Then getOrderById returns a list of orders

# Test getReceivedOrders
  Scenario: getReceivedOrders returns list of orders
    Given mock OrdersRepository is initialized
    When getReceivedOrders() is called
    Then getReceivedOrders returns a list of orders

# Test udpateOrders
  Scenario: udpateOrders is called successfully
    Given mock OrdersRepository is initialized
    When udpateOrders() is called
    Then udpateOrders has been called successfully