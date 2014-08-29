require 'net/http'
require 'httparty'
require 'json'


class PokeAPI

	BASE_URL = 'http://pokeapi.co/api/v1/'

	public
	def get(request)
		rsp = Net::HTTP.get_response(URI.parse(BASE_URL + request))
		return JSON.parse(rsp.body)
	end

end

p = PokeAPI.new
puts p.get('move/1/' + String(3) + '/')