require "iced_asset_pipeline/version"

module IcedAssetPipeline
  autoload :IcedTemplate, 'iced_asset_pipeline/iced_template'
end

require 'iced_asset_pipeline/engine' if defined?(Rails)