Feature: Viewing comments
	To view comments for a post
	As a user
	I need to be able to see them

Background:
	Given there is a post called "Bacon"
	And it has a comment "Bacon is tasty"
	And I am on the homepage

Scenario: Viewing a comment
	When I follow "Bacon"
	Then I should see "Bacon is tasty"
