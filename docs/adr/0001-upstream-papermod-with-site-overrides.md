# Track upstream PaperMod; customize via site-level overrides

The theme used to be a fork (`gmtborges/hugo-PaperMod`) carrying 5 custom commits on v7.0, which fell 155 commits behind upstream and stopped building on current Hugo. The `themes/PaperMod` submodule now points at upstream `adityatelange/hugo-PaperMod`, pinned to a master commit because no tagged release supports current Hugo. All customizations live in the site's `layouts/` and `assets/`, which Hugo resolves ahead of the theme. Upgrading means bumping the submodule and re-diffing the overridden templates (`layouts/baseof.html`, `list.html`, `single.html`, `_partials/social_icons.html`) against their upstream copies.

## Considered Options

- Rebase the fork onto upstream: repeats the same divergence on every upgrade.
- Hugo Modules: adds a Go toolchain to the build for no gain over a pinned submodule.
