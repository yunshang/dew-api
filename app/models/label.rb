class Label < ApplicationRecord
  has_many :work_labels
  has_many :works, through: :work_labels
end
