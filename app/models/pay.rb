# coding: utf-8
class Pay < ApplicationRecord
  belongs_to :expend
  validates :payable, presence: true, length: { minimum: 3, message:'3文字以上で入力してください。' }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 1, message:'金額を入力し得てください。' }
end
