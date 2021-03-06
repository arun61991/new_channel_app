class Show < ApplicationRecord
	belongs_to :channel
	has_many :favorites
	has_many :users, through: :favorites

	validates :title, presence: true
	validates :time, presence: true

	scope :search, -> (query) { joins(:channel).where("lower(title) LIKE ? OR lower(channels.name) LIKE ?", "%" + query.downcase + "%", "%" + query.downcase + "%") }
end
