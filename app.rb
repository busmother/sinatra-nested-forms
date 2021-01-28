require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      #binding.pry
      pirate = params[:pirate]
      @pirate = Pirate.new(pirate[:name], pirate[:weight], pirate[:height])
      params[:pirate][:ships].each do |details|
        Ship.new(details[:name], details[:type], details[:booty])
      end
      @ships = Ship.all 
      erb :'pirates/show'
    end

  end
end

# <h2>First Ship</h2>
# <p>Ship Name: <%=@ships[0].name%></p>
# <p>Ship Type: <%=@ships[0].type%></p>
# <p>Ship Booty: <%=@ships[0].booty%></p>
# <h2>Second Ship</h2>
# <p>Ship Name: <%=@ships[1].name%></p>
# <p>Ship Type: <%=@ships[1].type%></p>
# <p>Ship Booty: <%=@ships[1].booty%></p>