class Card < ActiveRecord::Base
  validates_presence_of :name
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
