require "jsduck/meta_tag"

module JsDuck::Tag
  # Implementation of @deferred tag
  class Deferred < JsDuck::MetaTag
    def initialize
      @name = "deferred"
      @key = :deferred
      @signature = {:long => "deferred", :short => "DEF"}
      @boolean = true
    end
  end
end