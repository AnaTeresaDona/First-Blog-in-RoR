class Post < ApplicationRecord

    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true

    def errase_spoiler
        sentence.gsub! "spoiler", " "
    end

end
