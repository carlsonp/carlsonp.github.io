# carlsonp.github.io

[https://carlsonp.github.io](https://carlsonp.github.io)

[![Actions Status](https://github.com/carlsonp/carlsonp.github.io/workflows/github-actions/badge.svg)](https://github.com/carlsonp/carlsonp.github.io/actions)

## About

The personal website for Patrick Carlson.

## Setup and Build Instructions

Built using [Jekyll](https://jekyllrb.com/).

```shell
docker build --pull -t carlsonp-github-website:latest .
docker run -v "${PWD}:/jekyll" -p 4000:4000 carlsonp-github-website:latest
docker exec -it <id> bash
```

* Run `bundle install` to install the dependencies via Gem
* Run `bundle exec jekyll serve --watch`
* View the site at `http://localhost:4000/`
* Run `bundle update --all` to update dependencies.  This will update the `Gemfile.lock` file.  Then run `bundle install` to install the updated dependencies.
* Run `bundle check` to make sure all dependencies are satisfied.
* Run `bundle outdated` to check for updates.
* Run `bundle exec htmlproofer ./_site --only-4xx --no-enforce-https --ignore-urls="/vimeo.com/,/researchgate.net/,/tibco.com/,/java.com/"` to run the proofer that validates the site (seems to only work on Linux and Docker).
* Run `bundle exec jekyll doctor` and `bundle exec jekyll build --profile` for health/setup checks and build performance.
* Run `bundle update --bundler` to update the bundler version
* Run `./spellcheck.sh` to look for spelling issues.  Add custom words to `.aspell.en.pws`.
* To generate Resume and CV PDFs:
  * Install Chrome
  * On Windows:
    * Right click `create-pdfs.ps1` and select `Run with PowerShell`
  * On Linux:
    * Open terminal, run from root directory: `./create-pdfs.sh`

## CI/CD

* Automated build, checker, and spellcheck via Github Actions
