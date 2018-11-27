class Work < ApplicationRecord
  has_many_attached :images
  has_many :work_labels
  has_many :labels, through: :work_labels
end
