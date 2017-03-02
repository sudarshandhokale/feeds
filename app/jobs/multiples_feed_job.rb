class MultiplesFeedJob < ApplicationJob
  queue_as :default

  def perform
    Feed.all.each do |feed|
      response = FeedReader.get(feed.url)
      feed.update(title: response[:title])
      response[:entries].each do |entry|
        local_entry = feed.entries.where(title: entry[:title]).first_or_initialize
        local_entry.update_attributes(entry)
      end
    end
  end
end
