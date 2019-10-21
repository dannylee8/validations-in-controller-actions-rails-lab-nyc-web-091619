class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: { 
        within: %w(Fiction Non-Fiction),
        message: "%{value} is not a valid category"    
    }
    validates :content, length: { 
        minimum: 100,
        message: "%{count} characters is too short"
    }
end
