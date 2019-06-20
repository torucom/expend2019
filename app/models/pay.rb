# coding: utf-8
class Pay < ApplicationRecord
  belongs_to :expend
  validates :payable, presence: true
  validates :cost, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
