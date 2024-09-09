css-watch:
	cd themes/PaperMod && npx tailwindcss -i ./assets/css/input.css -o ./assets/css/output.css --watch

hugo-dev:
	hugo server -D

dev:
	@make -j2 css-watch hugo-dev
