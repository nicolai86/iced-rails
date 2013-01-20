# encoding: UTF-8
require 'rails/engine'

module Iced
  module Rails
    class Engine < ::Rails::Engine
      initializer "iced-rails.environment" do |app|
        app.assets.register_engine '.iced', ::Iced::Rails::TemplateHandler
      end
    end
  end
end