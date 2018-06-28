require 'unirest'

response = Unirest.get("http://localhost:3000/api/segment_param_number_guess/45
  ")

p response.body