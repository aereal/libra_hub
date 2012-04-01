class Language < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  attr_accessible :name, :slug

  validates :name, presence: true, uniqueness: true
end
