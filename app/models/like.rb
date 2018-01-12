class Like < ApplicationRecord
  # Direct associations

  belongs_to :photo

  belongs_to :user

  # Indirect associations

  has_one    :user_like,
             :through => :user,
             :source => :photos

  # Validations

end
