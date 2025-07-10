# Este é um exemplo utilizado no tutorial do CucumberJS
Feature: Hear Shout
  Scenario: Listener is within range
    Given Lucy is located 15 meters form Scenario
    When Sean shouts "free bagels ar Sean's"
    Then Lucy hears Sean's message
