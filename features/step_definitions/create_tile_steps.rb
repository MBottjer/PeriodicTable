Given(/^I am on the create tile page$/) do
	visit '/tiles/new'
end

When(/^I create a tile$/) do
	fill_in 'tile_element', with: "span"
	fill_in 'tile_description', with: "Represents text with no specific meaning. This has to be used when no other text-semantic element conveys an adequate meaning, which, in this case, is often brought by global attributes like class, lang, or dir."
end

Then(/^I should see the tile posted on the homepage$/) do
	click_button 'Create Tile'
end