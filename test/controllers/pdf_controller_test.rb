require 'test_helper'

class PdfControllerTest < ActionDispatch::IntegrationTest
  test "should get certified" do
    get pdf_certified_url
    assert_response :success
  end

end
