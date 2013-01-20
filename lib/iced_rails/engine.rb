# encoding: UTF-8
module IcedRails
  class Engine < ::Rails::Engine
    initializer "iced_rails.environment" do |app|
      app.assets.register_engine '.iced', ::IcedRails::IcedTemplate
    end
  end
end