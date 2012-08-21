class Ranking < ActiveRecord::Base
  attr_accessible :desporto, :gama, :ranking, :loja_concorrencium_id
  belongs_to :loja_concorrencia
end