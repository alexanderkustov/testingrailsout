class Loja < ActiveRecord::Base
  attr_accessible :detalhes, :gmaps, :latitude, :longitude, :morada, :nome

acts_as_gmappable

  def gmaps4rails_address
    morada
  end

  def gmaps4rails_infowindow
     "Decathlon: #{nome} <br \>
     #{detalhes}
     "
  end


  def gmaps4rails_marker_picture
  {
   "picture" => "/images/dec.png",
   "width" => 20,
   "height" => 20,
  }
end
end
