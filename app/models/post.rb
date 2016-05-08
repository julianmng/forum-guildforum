class Post < ActiveRecord::Base
	has_attached_file :image, { large: "600X600>", medium: "300x300>", thumb: "150x150#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	belongs_to :user
	has_many :comments
end
