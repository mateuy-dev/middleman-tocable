# Middleman::Tocable

Generate a TOC for a middlman site.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'middleman-tocable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install middleman-tocable

## Usage

```html
# Index
<div class="toc">
<ol>
<%
if ! defined?(toc_generation)
	toc = generate_toc partial("schedule", locals: {toc_generation: true})
	
	toc.each do |sub_item| %>
		<%= partial "components/_toc_item", locals: {item: sub_item} %>
	<% end
end %>
</ol>
</div>
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Middleman::Tocable project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/middleman-tocable/blob/master/CODE_OF_CONDUCT.md).
