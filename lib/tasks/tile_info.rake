desc "Collect tile information"
task :fetch_information => :environment do 

require 'nokogiri'
require 'open-uri'


url = "https://developer.mozilla.org/en/docs/Web/Guide/HTML/HTML5/HTML5_element_list"
doc = Nokogiri::HTML(open(url))
categories = {"#Root_element" => 1, "#Document_metadata" => 2, "#Scripting" => 3, "#Sections" => 4, "#Grouping_content" => 5, "#Text-level_semantics" => 6, "#Edits" => 7, "#Embedded_content" => 8, "#Tabular_data" => 9, "#Forms" => 10, "#Interactive_elements" => 11}

categories.each_key do |category|
	doc.css(category + "+ .standard-table td").each do |item|
		html5 = false
		if item.css("img").to_s.include? "img"
			html5 = true
		end
		Tile.create(element: item.css(":nth-child(1)").text[/\<(.*?)>/,1], description: item.css("+ td").text.gsub(/\s+/, " "), category_id: categories[category], is_html5: html5)
	end
end

block_url = "https://developer.mozilla.org/en-US/docs/Web/HTML/Block-level_elements"
block_doc = Nokogiri::HTML(open(block_url))
inline_url = "https://developer.mozilla.org/en-US/docs/Web/HTML/Inline_elemente"
inline_doc = Nokogiri::HTML(open(inline_url))

	Tile.all.each do |tile|
		if block_doc.css(".threecolumns code").text.to_s.include? tile.element
			Tile.find(tile.id).update_column(:blockOrInline, "block")
		elsif inline_doc.css("p+ ul").text.split(', ').map(&:lstrip).include? tile.element
			Tile.find(tile.id).update_column(:blockOrInline, "inline")
		end
	end
end