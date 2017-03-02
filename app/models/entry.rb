class Entry < ApplicationRecord
  belongs_to :feed

  def feed_title
    feed.try(:title)
  end
end
