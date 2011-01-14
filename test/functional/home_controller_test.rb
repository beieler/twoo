require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get howItWorks" do
    get :howItWorks
    assert_response :success
  end

  test "should get bookExamples" do
    get :bookExamples
    assert_response :success
  end

  test "should get faqs" do
    get :faqs
    assert_response :success
  end

  test "should get pricingAndShipping" do
    get :pricingAndShipping
    assert_response :success
  end

  test "should get ourStory" do
    get :ourStory
    assert_response :success
  end

  test "should get ourGiving" do
    get :ourGiving
    assert_response :success
  end

  test "should get privacyPolicy" do
    get :privacyPolicy
    assert_response :success
  end

  test "should get contactUs" do
    get :contactUs
    assert_response :success
  end

  test "should get ourGuarantee" do
    get :ourGuarantee
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get pressArticle" do
    get :pressArticle
    assert_response :success
  end

  test "should get bookExampleDetail" do
    get :bookExampleDetail
    assert_response :success
  end

end
