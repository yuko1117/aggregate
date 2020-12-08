require 'test_helper'

class AggregateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aggregate_index_url
    assert_response :success
  end

end
