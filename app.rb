require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name] 
    @name.reverse
  end 
  get '/square/:number' do
    @number = params[:number] 
    @sum = @number.to_i ** 2
    @sum.to_s
  end 
  
  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
     "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 
  get '/:operation/:number1/:number2' do 
    answer = ''
    number1 = params[:number1].to_i 
    number2 = params[:number2].to_i 
    operation = params[:operation]
    if operation == 'add' 
       answer = number1 + number2
    elsif operation == 'subtract' 
      answer = number1 - number2
    elsif operation == 'multiply' 
      answer = number1*number2 
    elsif operation == 'divide' 
      answer = number1/number2
    end 
    answer.to_s
  end 
end