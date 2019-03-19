require 'test_helper'

class AltasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get altas_index_url
    assert_response :success
  end

end
