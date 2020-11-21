require 'pry'

class Startup

    attr_reader :founder
    attr_accessor :name, :domain
    @@all = []
    @@domains = []

    def initialize (name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@domains << domain
        @@all << self
    end

    def pivot (domain, name)
        self.domain = domain
        self.name = name
    end
    
    def self.all
        @@all
    end

    def self.find_by_founder (founder)
        @@all.find {|startup| startup.founder == founder}
    end

    def self.domains
        @@domains
    end

    def sign_contract (vc, type, amount)
        FundingRound.new(self, vc, type, amount.to_f)
    end

    def num_funding_rounds
        FundingRound.all.select {|round| round.startup == self}
    end

    def total_funds 
        cash_money = []
        self.num_funding_rounds.each {|round| cash_money << round.investment}
        cash_money.sum
    end

    def investors
        self.num_funding_rounds.map {|investment| investment.vc}.uniq
    end

    def big_investors
        self.investors.select {|investor| investor.total_worth > 1000000000}
    end



end


