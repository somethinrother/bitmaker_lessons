require 'httparty'
postal_code_response = HTTParty.get('https://represent.opennorth.ca/postcodes/M4C2A8/')

postal_code_json = JSON.parse(postal_code_response.body)
