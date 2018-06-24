module CoursesHelper
	def get_country_related_price(country, course)
		if country == "UK"
      price = @course.price["UK"]
    elsif country == "EU"
      price = @course.price["EU"]
    else
    	price = @course.price["NA"]
    end
	end
end
