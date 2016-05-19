#stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12

class Trade
	
attr_accessor :days, :daly_prise

@daly_prise=:daly_prise

	def stock_picker
		
		all_trades={}
		day_buy=0
		daly_prise.each do |buy|
			day_sell=0
			daly_prise.each do |sell|
					all_trades[[day_buy,day_sell]]=sell-buy if day_buy<day_sell
				day_sell+=1	
			end
		day_buy+=1	
		end
		
		benifit=all_trades.max_by{|potencial_trade,value| value}
		benifit_days=benifit[0]
		benifit_days
		#puts benifit
		
		
	end
	
end



my_trade=Trade.new

puts "How many trade days you want to add?"
my_trade.days=gets.chomp.to_i
input_daly_prise=Array.new(my_trade.days)

0.upto(my_trade.days) do |day|
puts "Put the price of the #{day} day"	
input_daly_prise[day]=gets.chomp.to_i	
end
my_trade.daly_prise=input_daly_prise
my_trade.stock_picker

# test
#my_trade.days=8
#my_trade.daly_prise=[17,3,6,9,15,8,6,1,10]
#my_trade.stock_picker