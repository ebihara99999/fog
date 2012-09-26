module Fog
  module Storage
    class HP

      class Real

        # Generate a temporary url for an object
        #
        # ==== Parameters
        # * container<~String> - Name of container
        # * object<~String> - Name of object
        # * expires<~Integer> - Time the temporary url expire in secs.
        # * method<~String> - Allowed HTTP method GET, PUT, HEAD only
        def get_object_temp_url(container, object, expires, method)
          generate_object_temp_url(container, object, expires, method)
        end

      end

      class Mock # :nodoc:all

        def get_object_temp_url(container, object, expires, method)
          @scheme = "https"
          @host = "swift-cluster.example.com"
          @port = "443"
          @path = "/v1/account"

          generate_object_temp_url(container, object, expires, method)
        end
      end

    end
  end
end