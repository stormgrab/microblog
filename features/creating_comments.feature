Feature: Creating Comments
	To comment on posts
	As a user
	I need a button and a textbox to do that

Background:
	Given there is a post called "Bacon"
	And I am on the homepage
	When I follow "Bacon"
	And I follow "Write a comment"
	
Scenario: Creating a comment
	And I fill in "Content" with "I always have bacon in my fridge"
	And I press "Add Comment"
	Then I should see "Comment added successfully"
	And I should see "I always have bacon in my fridge"

Scenario: Creating an empty comment
	And I fill in "Content" with ""
	And I press "Add Comment"
	Then I should see "Content can't be blank"