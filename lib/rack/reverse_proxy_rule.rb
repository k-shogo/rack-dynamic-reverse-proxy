module Rack
  class ReverseProxyRule

    def initialize rule
      if rule.kind_of?(Proc) || rule.respond_to?(:call)
        @rule = rule
      else
        raise "Invalid Rule for reverse_proxy"
      end
    end

    attr_reader :rule, :url

    def match? env
      @url = @rule.call env
    end

    def get_uri
      return nil if @url.nil?
      URI.parse(@url)
    end

  end
end
