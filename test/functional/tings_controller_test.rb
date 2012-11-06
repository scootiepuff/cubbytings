require 'test_helper'

class TingsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
	def setup
		#@controller = TingsController.new
	end

	def test_should_get_index
		get :index
		assert_response :success
	end

	def test_should_have_right_title
		get :index
		assert_select 'title','Cubbytings'
	end

	def test_should_have_element_for_each_ting
		get :index
		# use fixtures for fake test data
		ting1 = tings(:tp)
		ting2 = tings(:lentils)
		@tings = [ting1,ting2]

		@tings.each do |ting|
			assert_select 'li',ting.name
		end
	end

end
