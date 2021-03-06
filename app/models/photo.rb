class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :user

  # Indirect associations

  has_one    :like,
             :through => :user,
             :source => :likes

  # Validations

end
