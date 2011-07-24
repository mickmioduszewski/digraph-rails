class AddDescriptionToEdges < ActiveRecord::Migration
  def self.up
    add_column :edges, :description, :text
  end

  def self.down
    remove_column :edges, :description
  end
end
