class Post < ApplicationRecord
    has_one_attached :media
    # validates :title, presence: true
end
