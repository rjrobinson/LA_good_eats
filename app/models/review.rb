class Review < ActiveRecord::Base

####################
### Associations ###
####################

  belongs_to :restaurant



####################
### Validations ###
####################

  validates :rating, numericality: {
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 5
    }





end # of class
