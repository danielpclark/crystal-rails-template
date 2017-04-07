require "./base_controller"

module Railslike
  module Controllers
    class IndexController < BaseController

      private def request_query
        Kemal::ParamParser.new(env.request).query
      end

    end
  end
end
