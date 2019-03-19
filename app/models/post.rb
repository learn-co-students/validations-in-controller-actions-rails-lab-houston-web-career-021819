class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validates :content, length: { minimum: 250 }

end
