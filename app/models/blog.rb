class Blog < ApplicationRecord
    validates :title, :content, :image, presence: true
end
