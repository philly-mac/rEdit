APP_ROOT = "#{File.dirname(__FILE__)}/../../" unless defined?(APP_ROOT)

config = I18n::Config.new
config.load_path = Dir["#{APP_ROOT}/locales/*.yml"]
I18n.config = config