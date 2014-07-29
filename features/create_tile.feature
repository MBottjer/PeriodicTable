Feature: Create & View Tile
	In order to view HTML tiles
	As a user who wants to use html tags appropriately
	I want to view the tags on the homepage

	Scenario: Creating a Tile
		Given I am on the create tile page
		When I create a tile
		Then I should see the tile posted on the homepage