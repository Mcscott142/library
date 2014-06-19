class Categorization < ActiveRecord::Base
  belongs_to :category
  belongs_to :book

  validates :category, presence: true

  validates :book,
  presence: true,
  uniqueness: { scope: :category }


end
