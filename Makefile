post:
	bundle exec jekyll post "$(title)"

serve:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

.PHONY: post serve build
