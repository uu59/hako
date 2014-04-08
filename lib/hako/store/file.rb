# -- coding: utf-8

require "hako/store/base"
require "fileutils"

module Hako::Store
  class File < Base
    def get(key)
      ::File.open(path(key)).read
    end

    def delete(key)
      FileUtils.rm(path(key))
    end

    def put(key, value)
      ::File.open(path(key), "w"){|f| f.write value}
    end

    def path(key)
      path = ::File.join(root_dir, key)
      FileUtils.mkdir_p(::File.dirname(path))
      path
    end

    def root_dir
      @options[:root] || "."
    end
  end
end
