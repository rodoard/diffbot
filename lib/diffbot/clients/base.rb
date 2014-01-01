module Diffbot
  module Clients
    class Base
      include HTTParty

      def self.endpoint
        "http://api.diffbot.com/v2"
      end

      base_uri endpoint

      protected

      def get(path, options)
        fields = options[:fields].reject {|filter| filter.to_s == '*'}
        no_asterisk_fields = fields
        fields << '*' if fields.empty?
        response self.class.get(path, query:options
                       .merge({fields:fields
                       .map(&:to_s).join(',')})), no_asterisk_fields
      end
      private
      def response(httparty_response, fields)
        result = httparty_response.parsed_response.with_indifferent_access
        unless fields.empty?
          slice = result.slice(*fields)
          return slice.values.first if fields.count == 1
          return slcie
        end
        result
      end
    end
  end
end