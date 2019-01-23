class Post < ApplicationRecord
  belongs_to :user
  belongs_to :admin, class_name: :user, foreign_key: :admin_id
end
