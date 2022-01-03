class PropertiesController < ApplicationController

  def index 
    @properties = Property.all.includes(:photos)
  end
end
