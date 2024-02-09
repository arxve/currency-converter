# Currency Converter
This is a simple currency converter implemented in Ruby using the `httparty` gem to fetch exchange rates from the Exchange Rates API (https://exchangeratesapi.io).

## Features

- **Currency Conversion**: Convert an amount from one currency to another.
- **List Available Currencies**: View a list of available currencies supported by the API.

## Usage

1. **Install Dependencies**: Make sure you have Ruby installed on your system. You also need to install the `httparty` gem. You can install it via:

   ```bash
   gem install httparty
   ```

2. **Run the Converter**: Execute the Ruby script.

   ```bash
   ruby currency_converter.rb
   ```

3. **Follow On-screen Instructions**: Enter the amount you want to convert, the currency you're converting from, and the currency you're converting to.

4. **View Result**: The converter will display the converted amount.

## Example Output

```vb
Available currencies: USD, EUR, GBP, JPY, AUD, CAD, CHF, CNY, SEK, NZD
Enter amount: 100
From currency: USD
To currency: EUR
100.0 USD is equivalent to 82.85 EUR
```
