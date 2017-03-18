class Slate < ApplicationRecord
  belongs_to :user, required: false
  has_many :issues, dependent: :destroy

  accepts_nested_attributes_for :issues

  validates :name, presence: true
end
