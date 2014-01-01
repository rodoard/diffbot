require File.expand_path("#{File.dirname(__FILE__)}/../../../helpers/article_helper")

describe Diffbot::Clients::Article do
  include Helpers::ArticleHelper
  it "returns article title" do
    FakeWeb.register_uri(:get, %r|http://api.diffbot.com/v2/article|, :body => xconomy_post_json(:title).to_json, 'Content-Type' => "application/json")
    Diffbot::Clients::Article.new(DEV_TOKEN, XCONOMY_POST_URL).title.should eql(xconomy_post_title)
  end

end