class TextsController < ApplicationController
	def new
		@text = Text.new
	end

	def create
		@text = Text.new(text_params)

	end

	private

	def text_params
		# params.fetch(:text, {})
		params.require(:text).permit(:description)
	end
end
