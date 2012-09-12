class Outdoor < ActiveRecord::Base
  attr_accessible :detalhes, :foto, :gmaps, :latitude, :longitude, :morada, :nome
  acts_as_gmappable

  geocoded_by :morada                
  after_validation :geocode, :if => :morada_changed?      

  def gmaps4rails_address
    morada
  end

  def gmaps4rails_infowindow
     "<b>Nome: </b><a href='outdoors/#{id}'>#{nome}</a> <br \>
     #{detalhes}
     <br \>
     <a href='#{foto}''><img src='#{foto}' height='180px' \></a>
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