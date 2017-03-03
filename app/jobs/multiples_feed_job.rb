class MultiplesFeedJob < ApplicationJob
  queue_as :default

  def perform
    Feed.where.not(title: nil).each do |feed|
      response = FeedReader.get(feed.url)
      next if response.nil?
      response[:entries].each do |entry|
        local_entry = feed.entries.where(title: entry[:title]).first_or_initialize
        local_entry.update_attributes(entry)
      end
    end
  end
end
