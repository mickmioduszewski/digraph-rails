class Node < ActiveRecord::Base
  has_many :edges_as_source, :class_name => "Edge", :foreign_key => "source_id"
  has_many :edges_as_sink, :class_name => "Edge", :foreign_key => "edge_id"
  has_many :sources, :through => :edges_as_sink
  has_many :sinks, :through => :edges_as_source
end
