require 'rspec'
require './lib/ride'

RSpec.describe Ride do
	describe loop? do
		it "is true if the ride is a loop" do
			ride = Ride.new({name: "Town Lake",distance: 14.9, loop: true, terrain: :gravel})
			expect(ride.loop?).to be(true)
		end

		it "is false if the ride does not loop" do
			ride = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills })
      expect(ride.loop?).to be(false)
		end
	end

	describe total_distance do
    it "returns double the base distance if the ride is not a loop" do
      ride = Ride.new({ name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills })
      expect(ride.total_distance).to eq(21.4)
    end

    it "returns the base distance if the ride is a loop" do
      ride = Ride.new({ name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel })
      expect(ride.total_distance).to eq(14.9)
    end
  end
end		

