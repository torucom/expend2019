class Expend < ApplicationRecord
  has_many :pays, dependent: :destroy
  validates :title, presence: true,
            length: { minimum: 5 }
end
