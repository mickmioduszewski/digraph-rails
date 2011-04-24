# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

et = EdgeType.create([{ :name => "Objective->Strategy", :source_type => "Objective", :sink_type => "Strategy"}, { :name => "Parent->Child", :source_type => "Parent", :sink_type => "Child"}])