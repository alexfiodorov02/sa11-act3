def extract_urls(text)
  url_regex = %r{
    \b
    (
      (http|https|ftp)://
      [-a-z0-9+&@#/%?=~_|!:,.;]*[-a-z0-9+&@#/%=~_|]
    )
  }ix
  puts(text.scan(url_regex).map(&:first))
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)
