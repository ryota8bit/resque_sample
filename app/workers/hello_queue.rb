class HelloQueue
  @queue = :resque_sample # Woeker起動時に指定するQUEUE名

  def self.perform(message)
    sleep 5
    logger = Logger.new(File.join(Rails.root, 'log', 'resque.log'))
    logger.info "HelloQueue #{message}"
  end
end