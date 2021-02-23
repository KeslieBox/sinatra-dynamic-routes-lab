require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
      return params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
  #  total = params[:number1].params[:operation](params[:nummber2])
  #  total.to_s

  if params[:operation].include? "add"
    total = params[:number1].to_i + params[:number2].to_i
    total.to_s
  elsif params[:operation].include? "subtract"
    total = params[:number1].to_i - params[:number2].to_i
    total.to_s
  elsif params[:operation].include? "multiply"
    total = params[:number1].to_i * params[:number2].to_i
    total.to_s
  elsif params[:operation].include? "divide"
    # binding.pry

    total = params[:number1].to_i / params[:number2].to_i
    total.to_s
  end

end

end