class User < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  has_many   :bookmarked_photos,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
