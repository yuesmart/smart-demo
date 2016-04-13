require 'hpricot'
require 'open-uri'

class TuicoolService
  class<<self
    def invoke
      1.upto(20) do |page|
        parse_list page
      end
    end

    def parse_list page
      1.upto(2) do |lang|
        doc = _parse "/ah/0/#{page}?lang=#{lang}"

        (doc/"div.single_fake").each do |item|
          cover = _attr item/"div.article_thumb/img", :src
          digest = _text item/"div.article_cut"
          link = item/"div.article_title/a"

          href = _attr link, :href
          title = _text link

          content = _parse href
          tags = (content/"span.new-label/").map{ |label| _text(label) }
          body = _html content/"div.article_body"

          Post.create title: title, body: body, tag: tags, digest: (digest||'')[0...255], cover: cover
        end
      end
    end

    private
    def _parse path
      open("http://www.tuicool.com#{path}") { |f| Hpricot(f) }
    end

    def _text nodes
      _n(nodes).inner_text rescue nil
    end

    def _html nodes
      _n(nodes).inner_html rescue nil
    end

    def _attr nodes, property
      _n(nodes).attributes[property.to_s] rescue nil
    end

    def _n nodes
      nodes.is_a?(Array) ? nodes.first : nodes
    end
  end
end
