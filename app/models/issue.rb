class Issue < ApplicationRecord
  belongs_to :slate, required: false
end
