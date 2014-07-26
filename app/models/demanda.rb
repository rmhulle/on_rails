class Demanda < ActiveRecord::Base
  belongs_to :cidade
  belongs_to :user
end
