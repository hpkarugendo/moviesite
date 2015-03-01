module ApplicationHelper
	def signed_in?
		if session[:customer_id].nil?
			return
		else
			@current_customer = Customer.find_by_id(session[:customer_id])
		end
	end

	def euro(amount)
		number_to_currency(amount, :unit => '&euro;')
	end

	require 'rubygems'
	require 'ImageResize'
	#input_image_filename, output_image_filename, max_width, max_height
	def resizeImage(image)
		Image.resize(image, image, 50, 50)
	end
end
