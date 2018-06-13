class LineItem < ApplicationRecord
  #associations
  belongs_to :order, optional: true
  belongs_to :product
end
