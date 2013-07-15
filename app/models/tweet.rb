class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :favorites

  attr_accessible :text

  validates :text, presence: true
  validates :text, length: 8..140
  validates :text, format: String
end
