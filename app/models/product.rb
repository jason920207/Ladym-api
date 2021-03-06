# @Author: xiaojiezhang
# @Date:   2019-01-28T06:37:42-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T06:35:14-05:00



class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :orders, dependent: :destroy
  has_many :customers, through: :orders
end
