class OccupantsHasBedroom < ActiveRecord::Base
  belongs_to :occupant
  belongs_to :bedrom
  #belongs_to :bedrooms_floor
  #belongs_to :bedrooms_floors_house
end
