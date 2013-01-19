require_relative "iced_asset_pipeline/version"

module IcedAssetPipeline
  autoload :IcedTemplate, 'iced_asset_pipeline/iced_template'
end

if defined?(Rails)
  require_relative 'iced_asset_pipeline/engine'
end