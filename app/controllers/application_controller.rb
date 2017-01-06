class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def default_render(*args)
    raise ComponentNameMissingError unless @component_name.present?
    raise DataMissingError unless @data.present?

    render "/react"
  end

  private

  class ComponentNameMissingError < StandardError; end
  class DataMissingError < StandardError; end
end
