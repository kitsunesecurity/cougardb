class UsersController < ApplicationController
   skip_before_action :verify_authenticity_token
  def zip_codes
    zip_code = params[:zipcode]
    address = "https://api.zip-codes.com/ZipCodesAPI.svc/1.0/FindZipCodesInRadius?zipcode=#{zip_code}&minimumradius=0&maximumradius=150&key=DEMOAPIKEY"
    escaped_address = URI.escape(address)
    uri = URI.parse(escaped_address)
    json = Net::HTTP.get(uri)
    hash = eval(json)
    cities = []
    hash[:DataList].each{|obj| cities << obj[:City]}
    wf = Hash.new(0).tap { |h| cities.each { |word| h[word] += 1 } }.sort_by {|k,v| v}.reverse
    #taking the 50 biggest cities
    biggest_cities = wf[0..50]
    n_zips = 0
    biggest_cities.each{|city|
      n_zips += city[1]
    }
    n_members = 500.0
    proportions = n_members / n_zips
    hash_city = Hash.new
    biggest_cities.each{|city_arr|
      hash_city["#{city_arr[0]}"] = (city_arr[1] * proportions).to_i
    }
    random_user = []
    hash_city.each{|key,value|
      value.times{
        user = User.create(city: key)
      }
    }
    render json: wf
    random_users = User.order("RANDOM()")[0..500]
    render json: random_users
  end
end
