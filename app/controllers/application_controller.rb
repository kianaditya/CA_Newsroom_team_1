  class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  before_action :get_categories
  before_action :get_weather
  skip_before_action :verify_authenticity_token, if: :devise_controller?

  def get_categories
    @categories = Category.all
  end

  def configure_permitted_parameters
    attributes = %i[first_name last_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
  end

  def set_locale
    I18n.locale = I18n.available_locales.include?(params[:locale]&.to_sym) ? params[:locale] : I18n.default_locale
  end

  def after_sign_in_path_for(resource)
    if resource.admin?
      cms_articles_path
    else
      super
    end
  end

  def get_weather
    # if cookies[:weather].present?
    #   @current_weather = JSON.parse(cookies[:weather]).symbolize_keys
    # else
    @current_weather = WeatherService.get_weather(request)
    # cookies[:weather] = {
    #   value: JSON.generate(@current_weather),
    #   expires: 15.minutes.from_now
    # }
    # end
  end
end
