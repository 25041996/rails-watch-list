class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list


  validates :list_id, uniqueness: {scope: :movie_id, message: "déjà dans la liste"}
  validates :comment, length: { minimum: 6 }
end
