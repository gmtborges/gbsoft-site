dev:
	make -j 3 css-watch local-server open-browser

css-watch:
	cd themes/PaperMod && npx tailwindcss -i ./assets/css/input.css -o ./assets/css/output.css --watch

local-server:
	hugo server -D

open-browser:
	open http://localhost:1313

css:
	cd themes/PaperMod && npx tailwindcss -i ./assets/css/input.css -o ./assets/css/output.css --minify
