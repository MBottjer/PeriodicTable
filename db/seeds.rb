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