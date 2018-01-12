class Photo < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  # Validations

end
