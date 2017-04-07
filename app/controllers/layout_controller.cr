require "ecr/macros"

module Railslike
  module Controllers
    class LayoutController
      def initialize(@env : HTTP::Server::Context, @inner_context : BaseController); end

      def render
        to_s
      end

      ECR.def_to_s "#{`pwd`.chomp}/app/views/layout.ecr"

      forward_missing_to inner_context

      private property inner_context

      private def css_asset(file = "application.css")
        "/stylesheets/#{file}"
      end

      private def js_asset(file = "application.js")
        "/javascripts/#{file}"
      end
    end
  end
end
