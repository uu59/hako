# -- coding: utf-8

module Hako
  module Store
    class Base
      def initialize(options = {})
        @options = options
      end

      def put(key, value)
        raise NotImplementedError
      end

      def delete(key)
        raise NotImplementedError
      end

      def get(key)
        raise NotImplementedError
      end
    end
  end
end
