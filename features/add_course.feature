Feature: Add Course
  As a Demand Manager
  I want to add a new course
  So that I can make staff aware of a new course

Scenario Outline: Add Course
  Given I am on the Digital Academy homepage
  And I click “New Course”
  When I add a course with <title>, <overview> and <duration>
  And I click the “Save” button
  Then I should see <title>
  And I should see a <message>
  
  Examples:
    | title   | overview   | duration | message |
    | Title 1 | Overview 1 | 10       | success |

Scenario: Add Null
  Given I am on the Digital Academy homepage
  And I click “New Course”
  When I click the “Save” button
  Then I should see an error message