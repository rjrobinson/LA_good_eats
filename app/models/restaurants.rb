class Restaurants < ActiveRecord::Base

####################
### Associations ###
####################
  has_many :reviews




####################
### Validations ###
####################

  validates :name, length: { minimum: 1, maximum: 50 },
    uniqueness: true
  validates :address , length: { minimum: 1 }
  validates :city , length: { minimum: 1 }
  validates :state , length: { minimum: 1, maximum:2 }
  validates :zip_code , length: { is: 5 }

end # of class
