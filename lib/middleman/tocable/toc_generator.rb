module Middleman

  module Tocable

    ##
    # A store of all the blog slides in the site, with accessors
    # for the slides by various dimensions. Accessed via "blog" in
    # templates.
    ##
    class TocGenerator
    	def initialize page
    		@page = page
    		@toc = []
    		
    		generate
    	end

    	def add node
    		node
    	end

    	def toc
    		@toc
    	end

    	private

		def generate
			require 'nokogiri'
			@current_level = 0
			@current_stack = [@toc]

			doc = Nokogiri::HTML(@page)
			doc.search('h1, h2, h3, h4, h5, h6, h7, h8, .tocable').each do |elem|
				level = (elem["data-tocable-level"] || elem.name[1]).to_i - 1
				text = elem.text
				id = elem.attr("id")
				new_item = {id: id, text: text, items: []}
				if level > @current_level
					# check if jump > 1
					parent = @current_stack[@current_level].last
					@current_stack << parent[:items]
				else
					@current_stack = @current_stack[0..(level)]
					parent = @current_stack.last

				end
				@current_level = level
				@current_stack[level] << new_item
			end
		end
    end
  end
end