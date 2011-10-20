class Section < ActiveRecord::Base
  belongs_to :menu
  has_many :items
  
  default_scope order('position asc')
end
