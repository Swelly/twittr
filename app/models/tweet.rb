class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :favortes

  attr_accessible :text
end
