require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Crystalize", "Crystal", "crystals4everyone.com")
s2 = Startup.new("Zoaesis", "Zoe", "tropicaltravels.com")

vc1 = VentureCapitalist.new("Jeff Bezos", 250000000000)
vc2 = VentureCapitalist.new("Drake", 50000000000)
vc3 = VentureCapitalist.new("Ali Wong", 30000000)
vc4 = VentureCapitalist.new("Matthew McConaughey", 40000000000)

f1 = FundingRound.new(s1, vc2, "Angel", 100000)
f2 = FundingRound.new(s1, vc4, "Angel", 2500000)
f3 = FundingRound.new(s1, vc1, "Angel", 50000000)
f4 = FundingRound.new(s2, vc1, "Type A", 1000000)
f5 = FundingRound.new(s2, vc3, "Type B", 300000)
f6 = FundingRound.new(s2, vc4, "Type A", 7000000)
f7 = FundingRound.new(s2, vc4, "Type C", 7000000)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line