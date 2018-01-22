module ApplicationHelper
	def delimiter(number)
	  number_with_delimiter(number, :delimiter => ",", :separator => ".")
	end
end
