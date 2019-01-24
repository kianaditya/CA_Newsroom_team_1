# frozen_string_literal: true

module WeatherService

    API_URL = 'https://fcc-weather-api.glitch.me/api'
  def self.get_weather(request)
    ip = request.location.data['ip']

    #TODO: Extract geocoding to a service
    location = Geocoder.search(ip)
    city = location.first.city || 'Stockholm'
    lat = location.first.coordinates[0] || '59.35'
    lon = location.first.coordinates[1] || '18.05'
    response = RestClient.get(API_URL + '/current', params: {lat: lat, lon: lon})
    data = JSON.parse(response.body)
    {
      city: city,
      temp: data['main']['temp'],
      min_temp: data['main']['temp_min'],
      max_temp: data['main']['temp_max'],
      icon: data['weather'][0]['icon'] || ''
    }
  end
end
