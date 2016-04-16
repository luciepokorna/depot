class Product < ActiveRecord::Base
  default_scope :order => 'title'
  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01, :message => 'Cena musí být větší než 0.'}
  validates :title, :uniqueness => {:message => "Produkt s tímto názvem již existuje."}
  validates :image_url, :format => {:with => %r{\.(gif|jpg|png)$}i,
									:message => 'Musí jít o adresu URL pro obrázek typu GIF, JPG nebo PNG.'
									}
end
