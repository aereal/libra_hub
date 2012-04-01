class Language < ActiveRecord::Base
  attr_accessible :name, :slug

  validates :name, presence: true
end
