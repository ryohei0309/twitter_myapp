class User < ApplicationRecord
    validates :name,{presence: true}
    validates :email,{uniqueness: true,presence: true}
    

    has_secure_password

    def posts
        return Post.where(user_id: self.id)
    end
end
