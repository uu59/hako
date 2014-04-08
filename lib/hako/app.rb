# -- coding: utf-8

require "sinatra/base"
require "hako/store/file"

module Hako
  class App < Sinatra::Base
    helpers do
      def config
        Hako::CONFIG
      end

      def store
        config[:store]
      end

      def payload
        request.body.rewind
        request.body.read
      end
    end

    get "/" do
      "Hako"
    end

    put "/" do
      halt 400
    end

    delete "/" do
      halt 400
    end

    put %r!(.+)! do |key|
      status 201 if store.put(key, payload)
    end

    delete %r!(.+)! do |key|
      status 201 if store.delete(key)
    end

    get %r!(.+)! do |key|
      content_type "application/octet-stream"
      store.get(key)
    end
  end
end
