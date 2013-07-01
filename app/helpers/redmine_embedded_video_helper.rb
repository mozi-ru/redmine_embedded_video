module RedmineEmbeddedVideoHelper

  def load_config
    unless @config
      config_file = "#{Rails.root}/config/cloud_front.yml"
      unless File.exists?(config_file)
        raise "Config not found: #{config_file}"
      end
      @config = YAML.load_file(config_file)[Rails.env]
    end
    @config
  end

  module_function :load_config
end
