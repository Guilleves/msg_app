class MessagesController < ApplicationController

def new
end

def create
	@message = Message.new(params[:message])

	@message.save
	redirect_to @message
end

end
