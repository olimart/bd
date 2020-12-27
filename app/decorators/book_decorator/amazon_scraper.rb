module BookDecorator
  class AmazonScraper < Base
    def isbn
      payload[:isbn]
    end

    def title
      payload[:title]
    end

    def author
      payload[:author]
    end

    def editor
      payload[:editor]
    end

    def release_date
      payload[:release_date].to_date
    rescue ArgumentError
      payload[:release_date]
    end

    def tome
      payload[:tome]
    end

    def serie
      payload[:serie]
    end

    def cover_url
      payload[:cover_url]
    end
  end
end
