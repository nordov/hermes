class PagesController < ApplicationController
  before_action :set_values

  
  def index
  end

  def site_page

    @page_slug = params[ :id ]
    @page_title = @page_slug.split('-').join(' ').titleize

    if @company.cities.any?( @page_title ) 
      @title = 'Courier Services in ' + @page_title + ' | Southern California Same Day and Next Day Delivery'
      @template = 'city'
    else
      @title = @page_title + ' | Southern California Same Day and Next Day Delivery'
      @template = @page_slug
    end

    render @template

  rescue ActionView::MissingTemplate
    
    render '404'

  end

  def page_not_found

    render '404'

  end

  private

  def set_values
    @company = Company.new
  end

end
