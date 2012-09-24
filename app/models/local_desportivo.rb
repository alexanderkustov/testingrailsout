class LocalDesportivo < ActiveRecord::Base
  attr_accessible :desporto, :detalhes, :gmaps, :latitude, :longitude, :morada, :nome

  acts_as_gmappable

  geocoded_by :morada                # can also be an IP address
  after_validation :geocode, :if => :morada_changed?         # auto-fetch coordinates


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
   "picture" => "/images/picto/#{desporto}.png",
   "width" => 39,
   "height" => 70,
  }
end
end
