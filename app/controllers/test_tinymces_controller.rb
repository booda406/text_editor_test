class TestTinymcesController < ApplicationController
	def new
		@tinymce = TestTinymce.new
	end

	def create
		@tinymce = TestTinymce.new(tinymce_params)
		if @tinymce.save
			redirect_to root_path
		end
	end

	private

	def tinymce_params
		params.require(:test_tinymces).permit(:tinymce)
	end
end
