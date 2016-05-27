class Article < ActiveRecord::Base
  # Makes sure there must be a title and description before it is saved to the database.
  belongs_to :user
  validates :title, presence: true, length: {minimum: 3, maximum: 100
  validates :description, presence: true, length: { minimum: 10, maximum: 1000}
  validates :user_id, presence: true
end
