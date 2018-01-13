config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AKIAJYTZKTSDDG3BP7LA"],        # required
    aws_secret_access_key: ENV["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"],        # required
  }
  config.fog_directory  = ENV["my-bucket-name-2"]              # required
end
