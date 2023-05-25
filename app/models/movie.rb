class Movie < ApplicationRecord
  # validates :title, presence: true, uniqueness: true
  # validates :overview, presence: true
  validates :title, :overview, presence: true
  validates :title, uniqueness: true

  has_many :bookmarks

  # before_destroy :check_for_bookmarks

  # private

  # def check_for_bookmarks
  #   if bookmarks.any?
  #     errors.add(:base, "Cannot destroy movie with associated bookmarks")
  #     throw :abort
  #   end
  # end
end
# class Movie < ApplicationRecord
#   has_many :bookmarks
#   validates :title, presence: true, uniqueness: true
#   validates :overview, presence: true
# end
