class Section < ActiveRecord::Base
  belongs_to :menu
  has_many :items
  
  default_scope order('position asc')
  scope :non_hidden, where('hidden = ?', 0)
end
