class AddTypeToEdge < ActiveRecord::Migration
  def self.up
    add_column :edges, :edge_type_id, :string
  end

  def self.down
    remove_column :edges, :edge_type_id
  end
end
