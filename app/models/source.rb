class Source < ActiveRecord::Base
  has_many :clippings

  def import
    updated = created = 0
    feed = Feedzirra::Feed.fetch_and_parse feed_url
    feed.entries.each do |e|
      entry = Clipping.find_by_url(e.url)
      unless entry
        clippings.create(extract_entry_properties(e))
        created += 1
      end
    end
    logger.info "import result: created #{created} clippings."
  end

  def extract_entry_properties(entry)
    {
      :title => entry.title,
      :url => entry.url,
      :author => entry.author,
      :summary => entry.summary,
      :content => entry.content,
      :published => entry.published
    }
  end

end
