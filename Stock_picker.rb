#stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12

class Trade
	
attr_accessor :days, :daly_prise

	def stock_picker
		all_trades={}
		day_buy=0
		daly_prise.each do |buy|
			day_sell=0
			daly_prise.each do |sell|
					all_trades[[day_buy,day_sell]]=sell-buy
				day_sell+=1	
			end
		day_buy+=1	
		end
		
		puts all_trades.max_by{|potencial_trade,value| value}
	end
	
end



my_trade=Trade.new
my_trade.days=8
my_trade.daly_prise=[17,3,6,9,15,8,6,1,10]