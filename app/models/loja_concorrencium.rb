class LojaConcorrencium < ActiveRecord::Base
  attr_accessible :categoria, :gmaps, :latitude, :longitude, :morada, :nome, :loja_concorrencium_id, :rankings_attributes
  has_many :rankings
  accepts_nested_attributes_for :rankings, allow_destroy: true
  
  geocoded_by :morada
  after_validation :geocode, :if => :morada_changed?         # auto-fetch coordinates

  acts_as_gmappable

  def gmaps4rails_address
    morada
  end

  def gmaps4rails_infowindow
      text2 = ""
         text = "<b>Nome: </b><a href='loja_concorrencia/#{id}'>#{nome}</a>
         <br />
     <b>Categoria:</b> #{categoria}<br \>
      <h5>Rankins: </h5>
      <ul>
      <li><u><b>Desporto - Gama - Ranking</b></u></li>"
        rankings.each do |ranking|

 (ranking.ranking).times do

     text2 << "<img src='/images/star.png' />"
    end

          text << "<li>#{ranking.desporto} - #{ranking.gama} - #{text2}</li>"
        end
      text << "</ul>"



  text
  end
  
end
