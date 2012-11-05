require 'test_helper'

class TingControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

	def test_should_get_index
		get :index
		assert_response :success
	end

	def test_should_have_right_title
		get :index
		assert_select 'title','Cubbytings'
	end
end
