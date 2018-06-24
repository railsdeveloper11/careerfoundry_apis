module Careerfoundry
  class Course < Base
    attr_accessor :title,
                  :url,
                  :author,
                  :next_start,
                  :next_start_formatted,
                  :slug

  
    CACHE_DEFAULTS = { expires_in: 7.days, force: false }

    def self.random(query = {}, clear_cache)
      cache = CACHE_DEFAULTS.merge({ force: clear_cache })      
      response = Request.where('/en/api/courses', cache, query)
      all_courses = response.fetch('courses', []).keys.map {|key| response["courses"][key].merge(slug: key)}
      courses = all_courses.map {|course| Course.new(course)}
      [ courses, response[:errors] ]
    end

    def self.find(slug)
      response = Request.get("/en/api/courses/#{slug}", CACHE_DEFAULTS)
      CourseDetail.new(response)
    end
  end
end
