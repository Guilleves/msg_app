class MessagesController < ApplicationController

def show
	@message = Message.find(params[:id])
	#returns object corresponding to the given id -- id is the parameter needed by the router
end

def new
end

def create
	@message = Message.new(message_params)
	@message.save
	redirect_to @message
end

private 
	def message_params
		params.require(:message).permit(:from, :text)
	end
end
