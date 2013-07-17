Feature: Deleting Comments
	To delete comments that I wish to
	As a user
	I want a button to be able to do that

Background:
	Given there is a post called "Bacon"
	And it has a comment "Bacon is tasty"
	And I am on the homepage
	When I follow "Bacon"

Scenario: Deleting a Post
	And I follow "Delete Comment"
	Then I should see "Comment deleted"
	Then I should not see "Bacon is tasty"