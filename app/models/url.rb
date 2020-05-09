class Url < ApplicationRecord
	has_many :visit_histories,dependent: :destroy
	before_create :generate_shorten_url
  scope :expired_urls , -> { where("created_at < ?",1.month.ago)}

	def generate_shorten_url
    self.shorten = loop do
      random_token = SecureRandom.alphanumeric(5)
      break random_token unless Url.exists?(shorten: random_token)
    end
  end

  def shorten_url
  	ApplicationRecord.get_env_variables("url") + self.shorten
  end

  def top_countries
    top_countries = visit_histories.order("count(country) DESC").group("country")
    unless top_countries.blank?
      top_countries.limit(3).pluck(:country)
    end
  end
end
