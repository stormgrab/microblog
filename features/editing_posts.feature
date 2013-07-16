Feature: Deleting Posts
	To edit posts
	As a user
	I need a form to be able to do that

Background:
	Given there is a post called "Bacon is tasty"
	And I am on the homepage
	When I follow "Bacon is tasty"
	And I follow "Edit Post"

Scenario: Editing a post
	And I fill in "Title" with "Ice cream is tasty"
	And I press "Update Post"
	Then I should see "Post edited successfully"
	And I should see "Ice cream is tasty"
	And I should not see "Bacon is tasty"
	And I should be on the post page for "Ice cream is tasty"

Scenario: Editing a post with wrong parameters
	And I fill in "Title" with ""
	And I fill in "Content" with ""
	And I press "Update Post"
	Then I should see "Could not edit post"
