class Builders::Links < SiteBuilder
  def build
    inspect_html do |document|
      document.query_selector_all("a").each do |anchor|
        next if anchor[:target]

        next unless anchor[:href]&.starts_with?("http") && !anchor[:href]&.include?(site.config.url)

        anchor[:target] = "_blank"
        anchor[:rel] = "noopener noreferrer"
      end
    end
  end
end
