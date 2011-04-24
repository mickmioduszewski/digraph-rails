class CreateEdgeTypes < ActiveRecord::Migration
  def self.up
    create_table :edge_types do |t|
      t.string :name
      t.string :source_type
      t.string :sink_type

      t.timestamps
    end
    add_index(:edge_types, :name)
  end

  def self.down
    drop_table :edge_types
  end
end
