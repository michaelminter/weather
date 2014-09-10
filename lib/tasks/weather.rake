namespace :weather do
  desc 'Get weather stats from openweathermap.org'
  task :get => :environment do
    require 'json'
    datas = JSON.parse RestClient.get('http://api.openweathermap.org/data/2.5/group?id=5016884,1816670,5506956,5391959')
    datas['list'].each do |data|
      p data
      city = City.where(:name => data['name']).first_or_create({
        :name => data['name'],
        :latitude => data['coord']['lat'],
        :longitude => data['coord']['lon'],
        :country => data['sys']['country'],
      })
      Climate.create({
          :city_id => city.id,
          :temperature => data['main']['temp'],
          :pressure => data['main']['pressure'],
          :humidity => data['main']['humidity'],
          :temperature_min => data['main']['temp_min'],
          :temperature_max => data['main']['temp_max'],
          :wind_speed => data['wind']['speed'],
          :wind_degrees => data['wind']['deg'],
          :clouds => data['clouds']['all']
      })
    end
  end
end
