class Education < ApplicationRecord

	belongs_to :user, optional: :true

	validates :education, :per, :year, presence: :true
end
