class CreateEdges < ActiveRecord::Migration
  def self.up
    create_table  :edges do |t|
      t.integer   :source_id
      t.integer   :sink_id
      t.string    :name, :default => ""

      t.timestamps
    end
    add_index(:edges, :source_id)
    add_index(:edges, :sink_id)    
  end

  def self.down
    drop_table :edges
  end
end
