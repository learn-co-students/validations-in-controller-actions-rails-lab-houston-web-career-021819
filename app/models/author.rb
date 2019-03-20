class Author < ActiveRecord::Base
    validates :email, uniqueness: true
    validates :name, presence: true
end
