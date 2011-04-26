class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer :node_id
      t.date :original_due
      t.date :approved_due
      t.date :forecast_due
      t.decimal :original_cost, :scale => 2, :default => 0
      t.decimal :approved_cost, :scale => 2, :default => 0
      t.decimal :forecast_cost, :scale => 2, :default => 0
      t.text :notes      

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
