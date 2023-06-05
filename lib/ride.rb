class Ride
    attr_reader :name, :distance, :loop, :terrain
  
    def initialize
      @name = name
      @distance = distance
      @loop = loop
      @terrain = terrain
    end

    def loop?
     @loop
    end

		def total_distance
			if @loop
				@distance
			else
				@distance * 2
			end
		end

	