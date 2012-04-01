class Library < ActiveRecord::Base
  belongs_to :language
  attr_accessible :name, :slug
end
