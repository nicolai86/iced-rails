# encoding: UTF-8
require 'tilt/template'
require 'iced-coffee-script'

module IcedRails
  # IcedCoffeeScript template implementation. See:
  # http://maxtaco.github.com/coffee-script/
  #
  # IcedCoffeeScript templates do not support object scopes, locals, or yield.
  class IcedTemplate < ::Tilt::Template
    self.default_mime_type = 'application/javascript'

    @@default_bare = false

    def self.default_bare
      @@default_bare
    end

    def self.default_bare=(value)
      @@default_bare = value
    end

    def self.engine_initialized?
      defined?(::IcedCoffeeScript)
    end

    def initialize_engine
      require_template_library 'iced-coffee-script'
    end

    def prepare
      if !options.key?(:bare) and !options.key?(:no_wrap)
        options[:bare] = self.class.default_bare
      end
    end

    def evaluate(scope, locals, &block)
      @output ||= ::IcedCoffeeScript.compile(data, options.merge(runtime: :inline))
    end

    def allows_script?
      false
    end
  end
end