class Demanda < ActiveRecord::Base
  belongs_to :cidade
  belongs_to :user
  acts_as_votable 
end
