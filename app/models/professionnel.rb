class Professionnel < ActiveRecord::Base
  geocoded_by :adresse
  # after_validation :geocode, if: :address_changed?
end
