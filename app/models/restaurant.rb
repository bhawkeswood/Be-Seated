class Restaurant < ActiveRecord::Base

	validates :name, :address, :menu_url, :presence => true
	validates :price_range, :numericality => {:only_integer => true}
	validates_uniqueness_of :name, :menu_url
end
