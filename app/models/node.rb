class Node < ActiveRecord::Base
  has_many :edges_as_source, :class_name => "Edge", :foreign_key => "source_id", :dependent => :destroy
  has_many :edges_as_sink, :class_name => "Edge", :foreign_key => "sink_id", :dependent => :destroy
  has_many :sources, :through => :edges_as_sink
  has_many :sinks, :through => :edges_as_source
  has_one :task, :class_name => "Task", :foreign_key => "task_id"
  
  def self.search(search)
    if search
      where("name LIKE ?", "%#{search}%")
    else
      scoped
    end
  end

validates_presence_of :name
  
end
