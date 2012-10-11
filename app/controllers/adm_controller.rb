class AdmController < ApplicationController
	def index
		redirect_to new_admin_session_path
	end
end
