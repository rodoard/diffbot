require File.expand_path("#{File.dirname(__FILE__)}/../../../helpers/article_helper")

describe Diffbot::Clients::Article do
  include Helpers::ArticleHelper
  it "returns article title" do
    FakeWeb.register_uri(:get, XCONOMY_POST_URL, :response => xconomy_post_json(:title))
    Diffbot::Clients::Article.new(DEV_TOKEN, XCONOMY_POST_URL).title.should eql(xconomy_post_title)
  end

end