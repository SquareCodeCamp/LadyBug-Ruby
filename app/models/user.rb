class User < ActiveRecord::Base

	has_many :posts

	validates :name, presence: true, length: {maximum: 100}
	validates :lat, numericality: {greater_than: -90, less_than: 90}, allow_nil: true
	validates :lon, numericality: {greater_than: -180, less_than: 180}, allow_nil: true
	validates :bio, length: {maximum: 1024}, allow_nil: true
end

