carlsonp.github.io
==================

[https://carlsonp.github.io](https://carlsonp.github.io)

[![Build Status](https://travis-ci.com/carlsonp/carlsonp.github.io.svg?branch=master)](https://travis-ci.com/carlsonp/carlsonp.github.io)

### About

The personal website for Patrick Carlson.

### Setup and Build Instructions

Built using [Jekyll](https://jekyllrb.com/).

* Git clone
* Run `bundle install` to install the dependencies via Gem
* Run `bundle exec jekyll serve --watch`
* View the site at `http://localhost:4000/`
* Run `bundle update --all` to update dependencies.  This will update the `Gemfile.lock` file.  Then run `bundle install` to install the updated dependencies.
* Run `bundle check` to make sure all dependencies are satisfied.
* Run `bundle outdated` to check for updates.
* Run `bundle exec htmlproofer ./_site --only-4xx --check-favicon --check-html` to run the proofer that validates the site (seems to only work on Linux).
* Run `jekyll doctor` and `jekyll build --profile` for health/setup checks and build performance.
* To generate Resume and CV PDFs:
  * Install Chrome
  * On Windows:
    * Right click `create-pdfs.ps1` and select `Run with PowerShell`
  * On Linux:
    * Open terminal, run from root directory: `./create-pdfs.sh`
