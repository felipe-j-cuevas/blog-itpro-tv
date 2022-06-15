class Post < ApplicationRecord
 validates :title, presence: true, uniqueness: true

 validates :body, presence: true
 validate :cant_say_balderdash


 def cant_say_balderdash
  if body =~ /balderdash/
    error.add :body, "Can't say that word!" # :base base is used if want a global error
  end
 end

end