all: index.html

force:
	bikeshed -f spec ./index.src.html

index.html: index.src.html
	bikeshed -f spec ./index.src.html

base.html: base.src.html
	bikeshed -f spec base.src.html base.html

WD:
	bikeshed -f spec --md-status=WD ./index.src.html ./WD.html

publish:
	git push origin master

