class Outdoor < ActiveRecord::Base
  attr_accessible :detalhes, :foto, :gmaps, :latitude, :longitude, :morada, :nome
  acts_as_gmappable

  geocoded_by :morada                # can also be an IP address
  after_validation :geocode, :if => :morada_changed?         # auto-fetch coordinates


  def gmaps4rails_address
    morada
  end

  def gmaps4rails_infowindow
     "Outdoor: #{nome} <br \>
     #{detalhes}
     <br \>
     <a href='images/#{foto}''><img src='images/#{foto}' height='180px' \></a>
     "
  end
  
  def gmaps4rails_marker_picture
  {
   "picture" => "/images/out.png",
   "width" => 32,
   "height" => 37,
  }
end
end