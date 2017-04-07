require "./base_controller"

module Railslike
  module Controllers
    class Error404Controller < BaseController
   
      def self.to_proc
        ->(env : HTTP::Server::Context, e : Exception){
          new(env).render(self.new(env))
        }
      end

    end
  end
end
