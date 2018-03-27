class User < ApplicationRecord

	has_many :educations
	has_many :experiences
	has_many :projects

	accepts_nested_attributes_for :educations, :projects, :experiences

	validates :name, :email, :phone, presence: :true
end
