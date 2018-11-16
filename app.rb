require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number*@number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    whole_phrase = ""
    @num = params[:number].to_i
    @num.times do
      whole_phrase += "#{params[:phrase]}\n"
    end
    whole_phrase
  end
end
