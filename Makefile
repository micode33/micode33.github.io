.DEFAULT_GOAL := add-theme

add-theme:
	if [ ! -d "themes/LoveIt" ]; then \
		git submodule add https://github.com/dillonzq/LoveIt.git themes/LoveIt; \
  fi

remove-theme:
	git submodule deinit -f themes/LoveIt; \
	rm -rf .git/modules/themes/LoveIt; \
	git rm -f themes/LoveIt
