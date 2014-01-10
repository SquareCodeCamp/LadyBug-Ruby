class Message < ActiveRecord::Base

	belongs_to :sender, class_name: 'User'
	belongs_to :receiver, class_name: 'User'

	validates :content, presence: true, length: {maximum: 1000}
	validates :sender_id, presence: true
	validates :receiver_id, presence: true

end
