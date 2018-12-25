class RoomCategory < ApplicationRecord
  belongs_to :hotel
  accepts_nested_attributes_for :hotel
  validates :name,
              presence: true
  def to_s
    name
  end
end
