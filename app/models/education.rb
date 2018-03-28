class Education < ApplicationRecord

	belongs_to :user, optional: :true

	validates :education, :per, :year, presence: :true
	validates :education, uniqueness: true
end
