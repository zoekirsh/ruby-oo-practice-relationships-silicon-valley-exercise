## INVESTORS

require 'pry'

class VentureCapitalist

    attr_reader :name 
    attr_accessor :total_worth
    @@all = []
    @@tres_commas = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
        @@tres_commas << self if self.total_worth > 1000000000
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        @@tres_commas
    end

    def offer_contract (startup, type, amount)
        FundingRound.new(startup, self, type, amount.to_f)
    end

    def funding_rounds
        FundingRound.all.select {|round| round.vc == self}
    end

    def portfolio
        self.funding_rounds.map {|investment| investment.startup}.uniq
    end

    def biggest_investment
        self.funding_rounds.map {|investment| investment.investment}.max
    end

    def invested (domain)
        domain_money = self.funding_rounds.select {|investment| investment.startup.domain == domain}
        domain_money.map {|invest| invest.investment}.sum
    end


end
