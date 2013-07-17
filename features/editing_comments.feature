Feature: Editing comments
	To edit comments
	As a user
	I need a form to do that 

Background: 
	Given there is a post called "Bacon"
	And it has a comment "Bacon is tasty"
	And I am on the homepage
	When I follow "Bacon"

Scenario: Editing a comment
	And I follow "Edit Comment"
	And I fill in "Content" with "Bacon is really tasty"
	And I press "Add Comment"
	Then I should see "Comment edited successfully"
	And I should see "Bacon is really tasty"
	But I should not see "Bacon is tasty"

Scenario: Editing a comment with null field
	And I follow "Edit Comment"
	And I fill in "Content" with ""
	And I press "Add Comment"
	Then I should see "Content can't be blank"