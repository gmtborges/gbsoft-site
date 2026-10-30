# Bilingual site: Brazilian Portuguese default, English under /en/

The site went English-only in March 2025 (`b264e55`) and was reverted to Portuguese (`f0ba566`), which lost the international audience. Both languages are now kept permanently: Brazilian Portuguese (`pt-BR`) stays the default at the root so every indexed URL keeps working, and English lives under `/en/` with translated slugs (`/en/consulting/sre-devops`). Visitors switch with PaperMod's header language toggle; there is no Accept-Language redirect, and search engines rely on `hreflang` alternates.

## Considered Options

- English at the root, Portuguese under `/pt/`: breaks every existing indexed URL.
- Separate domain or subdomain for English: duplicates hosting and splits domain authority.
- Accept-Language auto-redirect: needs a Cloudflare Worker, misroutes crawlers, and overrides the visitor's choice.
