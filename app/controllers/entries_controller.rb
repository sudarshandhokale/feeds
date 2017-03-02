class EntriesController < ApplicationController
  def index
    @entries = Entry.order(pubdate: :desc)
  end
end
