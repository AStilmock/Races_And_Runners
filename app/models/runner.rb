class Runner < ApplicationRecord
  belongs_to :race, optional: true
end