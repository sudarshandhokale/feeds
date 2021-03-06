module FeedReader
  extend ActiveSupport::Concern

  def self.check_feed_url(url)
    response = RestClient.get(url)
    rss = Hash.from_xml(response.body)
    return nil if rss['rss'].blank?
    return nil if rss['rss']['channel'].blank?
    rss['rss']['channel']['title']
  rescue StandardError => error
    puts error.inspect
    nil
  end

  def self.get(url)
    response = RestClient.get(url)
    parse_rss(response.body)
  rescue StandardError => error
    puts error.inspect
    nil
  end

  def self.parse_rss(body)
    rss = Hash.from_xml(body)
    return nil if rss['rss'].blank?
    return nil if rss['rss']['channel'].blank?
    feed = rss['rss']['channel']
    parsed_rss = { title: feed['title'], entries: [] }
    feed['item'].each do |item|
      entry = { title: item['title'], url: item['link'], pubdate: item['pubDate'] }
      parsed_rss[:entries] << entry
    end
    parsed_rss
  end
end
