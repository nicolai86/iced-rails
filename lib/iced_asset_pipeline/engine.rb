# encoding: UTF-8
module IcedAssetPipeline
  class Engine < ::Rails::Engine
    initializer "iced_asset_pipeline.environment" do |app|
      app.assets.register_engine '.iced', ::IcedAssetPipeline::IcedTemplate
    end
  end
end