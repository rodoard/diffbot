require File.expand_path("#{File.dirname(__FILE__)}/../helper")

XCONOMY_POST_URL = "http://www.xconomy.com/san-francisco/2012/07/25/diffbot-is-using-computer-vision-to-reinvent-the-semantic-web/"

module Helpers
  module ArticleHelper

    def xconomy_post_json(options={})
      JSON.parse data(XCONOMY_POST_JSON)
    end

    def xconomy_post_title
      "Diffbot Is Using Computer Vision to Reinvent the Semantic Web"
    end
  end
end