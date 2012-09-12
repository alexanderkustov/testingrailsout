class Loja < ActiveRecord::Base
  attr_accessible :detalhes, :gmaps, :latitude, :longitude, :morada, :nome, :contactos_attributes
  has_many :contactos
  accepts_nested_attributes_for :contactos, allow_destroy: true

  acts_as_gmappable

  geocoded_by :morada
  after_validation :geocode, :if => :morada_changed?         # auto-fetch coordinates

  def gmaps4rails_address
    morada
  end

  def gmaps4rails_infowindow
      text = "<b>Nome: </b><a href='lojas/#{id}'>#{nome}</a>
    <br/>
     <b>Detalhes:</b> #{detalhes}<br \>
      <h5>Contactos: </h5>
      <ul>"
        contactos.each do |contacto|
          text << "<li>#{contacto.nome} #{contacto.contacto} #{contacto.detalhes}</li>"
        end
      text << "</ul>"
  text
  end

  def gmaps4rails_marker_picture
  {
   "picture" => "/images/dec.png",
   "width" => 32,
   "height" => 37,
  }
end
end
