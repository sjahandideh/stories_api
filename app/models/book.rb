class Book < ActiveRecord::Base

  has_many :chapters

  has_many :notes,    as: :notable
  has_many :comments, as: :commentable
  has_many :ratings,  as: :rateable

  has_and_belongs_to_many :authors
  has_and_belongs_to_many :followers

end
