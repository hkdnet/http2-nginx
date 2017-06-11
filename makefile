all: orig.png public/images public/index.html
orig.png:
	wget -O orig.png https://avatars1.githubusercontent.com/u/11524757
public/images:
	mkdir -p public/images
	ruby -e '(1..100).each { |e| system("cp orig.png public/images/#{e}.png") }'
public/index.html: src/index.html.erb
	mkdir -p public
	erb src/index.html.erb > public/index.html

.PHONY: all
