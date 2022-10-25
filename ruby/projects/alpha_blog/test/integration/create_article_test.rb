require "test_helper"

class CreateArticleTest < ActionDispatch::IntegrationTest
  
  setup do
    @user = User.create(username: "johndoe", email: "johndoe@example.com",
    password: "password", admin: true)
    sign_in_as(@user)
    @article = Article.create(title: "Popcorn", description: "The price of the popcorn..")
  end

  test "create a new article" do
    get "/articles/new"
    assert_response :success
    assert_difference 'Article.count', 1 do
      post articles_path, params: { article: { title: "Popcorn", description: "The price of the popcorn.."} }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "Popcorn", response.body
  end
end