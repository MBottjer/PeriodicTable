# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
root_element = Category.create name: 'Root Element'
document_metadata = Category.create name: 'Document Metadata'
scripting = Category.create name: 'Scripting'
sections = Category.create name: 'Sections'
grouping_content = Category.create name: 'Grouping Content'
text_level_semantics = Category.create name: 'Text-level Semantics'
edits = Category.create name: 'Edits'
embedded_content = Category.create name: 'Embedded Content'
tabular_data = Category.create name: 'Tabular Data'
forms = Category.create name: 'Forms'
interactive_elements = Category.create name: 'Interactive Elements'

Tile.delete_all
html = Tile.create element: 'html', description: 'Represents the root of an HTML or XHTML document. All other elements must be descendants of this element.', is_html5: 'false', category_id: 1
head = Tile.create element: 'head', description: 'Represents a collection of metadata about the document, including links to, or definitions of, scripts and style sheets.', is_html5: 'false', category_id: 2
title = Tile.create element: 'title', description: 'Defines the title of the document, shown in a browser\'s title bar or on the page\'s tab. It can only contain text and any contained tags are not interpreted.', is_html5: 'false', category_id: 2
base = Tile.create element: 'base', description: 'Defines the base URL for relative URLs in the page.', is_html5: 'false', category_id: 2
link = Tile.create element: 'link', description: 'Used to link JavaScript and external CSS with the current HTML document.', is_html5: 'false', category_id: 2
meta = Tile.create element: 'meta', description: 'Defines metadata that can\'t be defined using another HTML element.', is_html5: 'false', category_id: 2
style = Tile.create element: 'style', description: 'Used to write inline CSS.', is_html5: 'false', category_id: 2
