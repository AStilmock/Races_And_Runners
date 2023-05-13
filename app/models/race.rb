class Race < ApplicationRecord
  has_many :runners
  def self.sort_by_created_time
    order(created_at: :desc)
  end
end