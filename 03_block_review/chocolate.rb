class Chocolate
	def break_chocolate(n, m)
  	# long way

  	# if (n != 0 && m !=0)
  	# 	n*m -1
  	# else
  	# 	n*m
  	# end
		
		# short way
  	n == 0 && m == 0 ? 0 : n * m - 1
	end
end