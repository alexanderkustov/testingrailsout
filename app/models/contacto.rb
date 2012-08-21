class Contacto < ActiveRecord::Base
  attr_accessible :contacto, :detalhes,  :nome, :loja_id
  belongs_to :loja
end