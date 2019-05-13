require "middleman-core"

Middleman::Extensions.register :tocable do
  require "lib/middleman-tocable/extension"
  Middleman::TocableExtension
end
