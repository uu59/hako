# -- coding: utf-8

require "pry"
require "hako/app"

module Hako
  CONFIG = {}

  def self.setup(&block)
    block.call(CONFIG)
  end

  def self.config
    CONFIG
  end
end
