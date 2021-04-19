class ArticlesWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(name)
    puts "Sidekiq working"
  end
end
