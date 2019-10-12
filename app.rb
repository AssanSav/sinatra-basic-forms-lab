require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :index
    end

    get '/new' do 
        erb :create_puppy
    end

    post '/puppy' do 
        @puppy_obj = Puppy.new(params[:name], params[:breed], params[:months_old])
        @name = @puppy_obj.name
        @breed = @puppy_obj.breed
        @age = @puppy_obj.months_old
        #binding.pry
        erb :display_puppy
    end
end
