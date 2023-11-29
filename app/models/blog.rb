class Blog < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: 
    true, length: { minimum:2 }
end
