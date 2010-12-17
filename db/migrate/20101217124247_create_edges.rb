class CreateEdges < ActiveRecord::Migration
  def self.up
    create_table :edges do |t|
      t.integer :source_id
      t.integer :sink_id

      t.timestamps
    end
  end

  def self.down
    drop_table :edges
  end
end
