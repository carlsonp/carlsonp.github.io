source "https://rubygems.org"

gem "jekyll", "~> 4.4.1"

# If you have any plugins, put them here
group :jekyll_plugins do
  gem "jekyll-feed", ">= 0.17"
  gem "jekyll-seo-tag", ">= 2.8"
end

gem "activesupport", ">= 4.1.11"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:windows, :jruby]

# Performance-booster for watching directories on Windows
gem "wdm", ">= 0.1.1" if Gem.win_platform?

# for checking the overall site
# https://github.com/gjtorikian/html-proofer
gem "html-proofer"

# this fixes the Docker build
gem "webrick", ">= 1.7"
