class User < ActiveRecord::Base
	#authenticates_with_sorcery!
	validates_confirmation_of :password, message: "Both fields must be identical", if: :password
end
