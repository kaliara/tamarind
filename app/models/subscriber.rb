class Subscriber < ActiveRecord::Base
  validates :email, :format => { :with => /^[\w\d]+$/ }, :presence => true, :uniqueness => true
end
