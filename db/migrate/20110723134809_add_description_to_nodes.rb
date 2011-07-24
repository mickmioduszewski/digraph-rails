class AddDescriptionToNodes < ActiveRecord::Migration
  def self.up
    add_column :nodes, :description, :text
  end

  def self.down
    remove_column :nodes, :description
  end
end
