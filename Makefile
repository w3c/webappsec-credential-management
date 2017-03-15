all: index.html

new: base.html sitebound.html

force:
	bikeshed -f spec ./index.src.html

%.html: %.src.html
	bikeshed -f spec $^ $@

WD:
	bikeshed -f spec --md-status=WD ./index.src.html ./WD.html

publish:
	git push origin master

