class PropertiesController < ApplicationController

  def index 
    @properties = []
    @number_of_properties = 8
    @number_of_properties.times do |i|
      @properties.push(Property.find(i + 1)) 
    end
  end
end
