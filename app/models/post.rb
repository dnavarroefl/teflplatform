class Post < ActiveRecord::Base
	has_many :comments
	has_many :answers
	validates :name, presence: true
	validates :title, presence: true
	validates :text, presence: true
end
