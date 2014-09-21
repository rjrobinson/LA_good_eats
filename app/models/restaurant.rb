class Restaurant < ActiveRecord::Base

  has_many :reviews


  validates :name, length: { minimum: 1, maximum: 50 }
  validates :address , length: { minimum: 1 }
  validates :city , length: { minimum: 1 }
  validates :state , length: { minimum: 1, maximum:20 }
  validates :zip_code , length: { maximum: 6 }

end
