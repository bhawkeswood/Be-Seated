class Restaurant < ActiveRecord::Base

	validates :name, :address, :menu_url, :presence => true
	validates :price_range, :numericality => {:only_integer => true}
	validates_uniqueness_of :name, :menu_url
	validates :close_hour, 
	:numericality => { :only_integer => true, :greater_than => :open_hour}

	has_many :reservations
	has_many :users, through: :reservations
end

# def timeslots
# 	timeslots = []
# 	if self.open_hour < 12
# 		a_time_intermediate = self.open_hour.to_s + "am"
# 	else
# 		a_time_intermediate = self.open_hour.to_s + "pm"
# 	end

# 	a_time = a_time_intermediate.to_time
# 	reservation_interval = 30.minutes

# 	begin 
# 		timeslots << a_time
# 		a_time <= reservation_interval

# 		if a_time > a.time.change(hour: close_hour)
# 			a_time +=1.day
# 			a_time = a_time.change(hour: open_hour)
# 		end


# 	end while a_time < Time.zone.now + 3.days
# 	timeslots
# end

# def party_sizes
# 	self.reservations.where("time < ?", [2.hours.from_now].collect |rez| rez.party_size }.inject(&:+).to_i
# end

