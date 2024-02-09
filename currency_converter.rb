require 'httparty'

class CurrencyConverter
  BASE_URL = 'https://api.exchangeratesapi.io/latest'.freeze

  def initialize
    @exchange_rates = fetch_exchange_rates
    @currencies = @exchange_rates['rates'].keys
  end

  def convert(amount, from_currency, to_currency)
    return "Invalid currency" unless valid_currency?(from_currency) && valid_currency?(to_currency)

    converted_amount = amount * (@exchange_rates['rates'][to_currency] / @exchange_rates['rates'][from_currency])
    "#{amount} #{from_currency} is equivalent to #{converted_amount.round(2)} #{to_currency}"
  end

  def list_currencies
    @currencies
  end

  private

  def fetch_exchange_rates
    response = HTTParty.get(BASE_URL)
    JSON.parse(response.body)
  end

  def valid_currency?(currency)
    @currencies.include?(currency)
  end
end

# Example usage
converter = CurrencyConverter.new
puts "Available currencies: #{converter.list_currencies.join(', ')}"
print "Enter amount: "
amount = gets.chomp.to_f
print "From currency: "
from_currency = gets.chomp.upcase
print "To currency: "
to_currency = gets.chomp.upcase

puts converter.convert(amount, from_currency, to_currency)
