class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  # before_destroy :destroy_saved_movies

  # private

  # def destroy_saved_movies
  #   movies.destroy_all
  # end
end
# class List < ApplicationRecord
#   has_many :bookmarks, dependent: :destroy
#   has_many :movies, through: :bookmarks
#   validates :name, presence: true, uniqueness: true
# end
