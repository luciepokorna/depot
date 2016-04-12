Product.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(:title =>'Začínáme programovat v Ruby on Rails',
:description =>
	%{<p>
			Ruby on Rails je revoluční programovací nástroj, jenž urychluje a zjednodušuje tvorbu webových stránek
			a jejich aplikací.
			Díky zapojení přímočarého jazyka Ruby a vývojové platformy, kterou poskytuje Rails,
			můžete ve velmi krátkém čase vytvořit plnohodnotné webové aplikace,
			i když nejste zkušenými prográmatory.
	<p>},
:image_url => '/images/zprr.jpg',
:price => 337)
