class User < ActiveRecord::Base
  has_many :tweets
  has_many :favorites

  has_many :followings
  has_many :friends, :through => :followings, :source => 'followed'

  attr_accessible :name, :handle,
                  :description, :email,
                  :location, :password

  validates :name, presence: true
  validates :name, length: {maximum: 35}

  validates :handle, presence: true
  validates :handle, uniqueness: true
  validates :handle, length: {maximum: 35}

  validates :description, presence: true
  validates :description, length: {maximum: 120}

  validates :email, presence: true
  validates :email, length: {maximum: 120}

  validates :location, presence: true
  validates :location, length: {maximum: 30}

  validates :password, presence: true
  validates :password, length: 8..20



end
