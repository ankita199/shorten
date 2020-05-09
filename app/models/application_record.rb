class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.get_env_variables(key)
  	Rails.application.credentials[Rails.env.to_sym][key.to_sym]
  end
end
