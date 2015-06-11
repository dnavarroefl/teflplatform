class DuolingoController < ApplicationController

	def dashboard
		@duolingos = Duolingo.all
	end 

end
