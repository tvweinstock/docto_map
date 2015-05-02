class Professionnel < ActiveRecord::Base
  validates :nom, :specialite, presence: true
end
