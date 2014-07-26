class CidadeAtuacao < ActiveRecord::Base
  belongs_to :user
  belongs_to :cidade
end
