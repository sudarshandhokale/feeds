class Feed < ApplicationRecord
  has_many :entries, dependent: :destroy
  validates :url, presence: true
  validate :check_feed_url

  def check_feed_url
    response = FeedReader.check_feed_url(url)
    response.nil? ? errors.add(:url, 'is invalid') : self.title = response
  end
end
