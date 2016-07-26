class RoomsController <ApplicationController
	before_action :rooms
	def index
		@rooms = Room.all
	end
	def show
		@messages = room.messages
	end
	private
	def rooms
		@rooms ||= Room.all
	end
	
	def room 
		@room ||= Room.find(params[:id])
	end
end