class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable
      t.timestamps
      t.string  :user_name, :default => "unknown"
      t.string  :comment, :default => "none"
      t.string  :graph_direction, :default => "LR"
      t.integer :graph_root_node_size, :default => 16
      t.integer :graph_root_edge_size, :default => 16
      t.integer :graph_size_reduction, :default => 2
      t.integer :graph_up_depth, :default => 3
      t.integer :graph_down_depth, :default => 3
    end


    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    # add_index :users, :authentication_token, :unique => true
  end

  def self.down
    drop_table :users
  end
end
