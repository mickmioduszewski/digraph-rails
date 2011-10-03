class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
#  attr_accessible :user_name, :comment, :graph_direction, :graph_root_node_size, :graph_root_edge_size
#  attr_accessible :graph_size_reduction, :graph_up_depth, :graph_down_depth
  
#  GRAPH_ORIENTATION = ['LR', 'RL', 'TB', 'BT']
#  GRAPH_SIZE_REDUCTION = ['0', '1','2','3','4','5','6']
#  GRAPH_REACH = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

  has_one :user_pref, :dependent => :destroy

  after_create :create_default_prefs

  private

  def create_default_prefs
    self.create_user_pref()
  end

end
