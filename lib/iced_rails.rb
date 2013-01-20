require_relative "iced_rails/version"

module IcedRails
  autoload :IcedTemplate, 'iced_rails/iced_template'
end

if defined?(Rails)
  require_relative 'iced_rails/engine'
end