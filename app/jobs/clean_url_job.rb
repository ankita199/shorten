class CleanUrlJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "===========Clean URL JOB=========="
    expired_urls = Url.expired_urls
    unless expired_urls.blank?
      puts "====total expired_urls======#{expired_urls.count}==="
      expired_urls.destroy_all
    end
  end
end
