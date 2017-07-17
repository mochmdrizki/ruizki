class Article < ApplicationRecord
	has_many :comments
	mount_uploader :image, ImageUploader
	extend FriendlyId
	friendly_id :title, use: :slugged
	acts_as_taggable

	rails_admin do
		edit do
			field :title
			field :image
			field :body, :ck_editor
			field :tag_list
		end
	end
end
