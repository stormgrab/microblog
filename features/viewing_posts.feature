Feature: Viewing Projects
	To be able to view my projects with details
	As a user
	I need to have a page to show the project

Background:
	Given there is a post called "Bacon"
	And I am on the homepage

Scenario: Viewing a project
	When I follow "Bacon"
	Then I should be on the post page for "Bacon"