all: index.html

new: base.html sitebound.html

force:
	bikeshed -f spec ./index.bs

%.html: %.bs
	bikeshed -f spec $^ $@

WD:
	bikeshed -f spec --md-status=WD ./index.bs ./WD.html

clean:
	$(RM) index.html
