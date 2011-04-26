class Task < ActiveRecord::Base
  belongs_to :node, :class_name => "Node", :foreign_key => "node_id"
  
  def node_name
    node.name if node
  end
  
  def node_name=(name)
    self.node = Node.find_or_create_by_name(name) unless name.blank?
  end
  
end
