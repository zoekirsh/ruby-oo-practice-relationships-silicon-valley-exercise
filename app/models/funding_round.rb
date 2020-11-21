require 'pry'

class FundingRound

    attr_reader :startup, :vc, :type
    attr_accessor :investment
    @@all = []

    def initialize (startup, vc, type, investment)
        @startup = startup
        @vc = vc
        @type = type
        @investment = investment.to_f
        @@all << self
    end

    def self.all
        @@all
    end


end
