class LocalDesportivo < ActiveRecord::Base
  attr_accessible :desporto, :detalhes, :gmaps, :latitude, :longitude, :morada, :nome
 
  acts_as_gmappable

  def gmaps4rails_address
    morada
  end

  def gmaps4rails_infowindow
      text = "<b>Nome:</b> #{nome} <br/>
       <b>Desporto:</b> #{desporto} <br/>
       <b>Detalhes:</b> #{detalhes}<br \>"
      
  text
  end

  def gmaps4rails_marker_picture
  {
   "picture" => "/images/#{desporto}.png",
   "width" => 32,
   "height" => 37,
  }
end
end
