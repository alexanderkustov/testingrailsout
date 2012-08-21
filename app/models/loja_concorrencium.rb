class LojaConcorrencium < ActiveRecord::Base
  attr_accessible :categoria, :gmaps, :latitude, :longitude, :morada, :nome, :loja_concorrencium_id, :rankings_attributes
  has_many :rankings
  accepts_nested_attributes_for :rankings, allow_destroy: true
 

  geocoded_by :morada                # can also be an IP address
  after_validation :geocode, :if => :morada_changed?         # auto-fetch coordinates

  acts_as_gmappable

  def gmaps4rails_address
    morada
  end

  def gmaps4rails_infowindow
         text = "<b>Concorrencia:</b> #{nome} <br/> 
     <b>Categoria:</b> #{categoria}<br \>
      <h5>Rankins: </h5>
      <ul>
      <li><u><b>Desporto - Gama - Ranking</b></u></li>"
        rankings.each do |ranking|
          text << "<li>#{ranking.desporto} - #{ranking.gama} - #{ranking.ranking}</li>"
        end
      text << "</ul>"
  text
  end
  
end
