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
    response = RestClient.get(API_URL + '/current', params: {lat: lat, lon: lon}) || '{"coord":{"lon":18.05,"lat":59.35},"weather":[{"id":701,"main":"Mist","description":"mist","icon":"https://cdn.glitch.com/6e8889e5-7a72-48f0-a061-863548450de5%2F50d.png?1499366021771"}],"base":"stations","main":{"temp":-3.46,"pressure":1009,"humidity":100,"temp_min":-6,"temp_max":-1},"visibility":8000,"wind":{"speed":1.5,"deg":240},"clouds":{"all":90},"dt":1548238800,"sys":{"type":1,"id":1788,"message":0.0035,"country":"SE","sunrise":1548227809,"sunset":1548254591},"id":2698691,"name":"Kungsholmen","cod":200}'
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
