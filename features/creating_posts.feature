Feature: Creating Posts
To create Posts
As a user
I need a button and a form to be able to do that

Background:
	Given I am on the homepage
	When I follow "New Post"

Scenario: Creating a post
	And I fill in "Title" with "Bacon is tasty"
	And I fill in "Content" with "Bacon is one of the tastiest food in the Universe. Its tastiness abounds everything"
	And I press "Create Post"
	Then I should see "Post has been successfully created"
	
Scenario: Creating a post with wrong parameters
	And I press "Create Post"
	Then I should see "Post creation failed"
	
