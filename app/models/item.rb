class Item < ActiveRecord::Base
  belongs_to :section

  default_scope order('position asc')
end
