module ProductsHelper
	include ActionView::Helpers::NumberHelper
	def number_with_delimiter(number, options = {})
        number_with_delimiter(number, :delimiter => ",", :separator => ".")
    end
end
