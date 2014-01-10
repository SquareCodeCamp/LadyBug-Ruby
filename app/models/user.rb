class User < ActiveRecord::Base

	has_many :posts
	has_many :sent_messages, class_name: 'Message', foreign_key: :sender_id
	has_many :received_messages, class_name: 'Message', foreign_key: :receiver_id


	validates :name, presence: true, length: {maximum: 100}
	validates :lat, numericality: {greater_than: -90, less_than: 90}, allow_nil: true
	validates :lon, numericality: {greater_than: -180, less_than: 180}, allow_nil: true
	validates :email, length: {maximum: 255}, uniqueness: {case_sensitive: false}, allow_nil: true, format: {with: /\A[^\s@]+@[^\s@]+\.[^\s@]+\z/}
	validates :bio, length: {maximum: 1024}, allow_nil: true
	validates :pic, length: {maximum: 5.megabytes}, allow_nil: true

  def token
    Session.generate_token(self)
  end
end
