module Diffbot
  module Clients
    class Article < Base
      attr_accessor :token, :url
      def initialize(token, url)
        @token = token
        @url = url
      end

      def title
        article(:title)
      end

      private
      def article(*filters)
        options = {
          token:token,
          url:url,
          fields:filters
        }
        get('/article', options)
      end
    end
  end
end