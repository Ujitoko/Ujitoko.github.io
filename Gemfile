# This Gemfile is only for local preview.
# GitHub Pages builds the site itself using its own pre-installed Jekyll environment
# and will ignore this Gemfile.

source "https://rubygems.org"

gem "github-pages", group: :jekyll_plugins

# Ruby 3.x no longer bundles webrick, which `jekyll serve` needs.
gem "webrick", "~> 1.8"

# Windows ships no zoneinfo database, so `timezone: Asia/Tokyo` in _config.yml
# cannot be resolved locally without this. GitHub Pages builds on Linux and
# does not need it.
gem "tzinfo-data", platforms: [:mingw, :x64_mingw, :mswin, :jruby]
