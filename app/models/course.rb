class Course < ActiveRecord::Base
  validates_presence_of :title, :overview, :duration
end
