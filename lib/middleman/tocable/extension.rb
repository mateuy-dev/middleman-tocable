# Require core library
require 'middleman-core'
require 'lib/middleman-tocable/toc_generator'

module Middleman
  class TocableExtension < ::Middleman::Extension
    #expose_to_template :teaching
    #option :my_option, 'default', 'An example option'

    def initialize(app, options_hash={}, &block)
      super

      # Require libraries only when activated
      # require 'necessary/library'
      #require 'nokogiri'

      # set up your extension
      # puts options.my_option
    end

    


    helpers do
      def generate_toc page
        Tocable::TocGenerator.new(page).toc
      end
    end
  end
end
