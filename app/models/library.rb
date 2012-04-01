class Library < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  belongs_to :language
  attr_accessible :name, :slug

  validates :name, presence: true, uniqueness: true
end
