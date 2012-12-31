class Settlor < Person
  attr_accessible :joint_children_with_spouse, :estimated_net_worth
  attr_accessor :joint_children_with_spouse, :estimated_net_worth
end
