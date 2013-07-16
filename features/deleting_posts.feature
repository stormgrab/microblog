Feature: Deleting Posts
	To delete posts that I wish to
	As a user
	I want a button to be able to do that

Background:
	Given there is a post called "Bacon"
	And I am on the homepage

Scenario: Deleting a Post
	When I follow "Bacon"
	And I follow "Delete Post"
	Then I should see "Post has been deleted"
	Then I should not see "Bacon"