class User < ApplicationRecord
  devise :database_authenticatable,
          :recoverable, :rememberable, :trackable
  include DeviseTokenAuth::Concerns::User

  enum role: [:admin, :user]


  def as_json(options={})
    {first_name: first_name, 
      last_name: last_name, 
      email: email, 
      mobile: mobile, 
      age: age, 
      image: image, 
      role: role}
  end
end
