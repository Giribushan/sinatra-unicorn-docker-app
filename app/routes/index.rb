module Sinatra
  module App
    module Routing
      module Index

        def self.registered(app)

          index = lambda do
            erb :index
          end

          app.get '/', &index

        end

      end
    end
  end
end
