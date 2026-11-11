# Switch to Chirpy theme, add dev diary posts and update roadmap

- **Commit:** `a9ce1b3`  
- **Date:** 2026-10-08  
- **Author:** Claude

## Summary
The biggest commit in the repo: moves the site to the **Chirpy** theme and back-fills the whole diary.

## What changed
- **Theme:** set up from chirpy-starter — Gemfile, `_config.yml`, GitHub Actions deploy workflow (`pages-deploy.yml`), contact/share data, `.editorconfig`, `.gitattributes`.
- **Branding:** "ner software" with the logo (`assets/img/ner-software-logo.png`) as sidebar avatar.
- **Tabs:** About, The Game, Roadmap moved into `_tabs/`; added Archives, Categories, Tags. Home now lists posts, replacing `index.md` and `diary.md`.
- **Posts:** the three hand-written posts replaced by ~40 first-pass posts, one per merged game PR (#1–#33) plus one for direct commits to main. Topics span characters and animation, the character select and menus, first magic, the gallery, aim and maps, weapons and slots, options and UI, the buy menu, impacts, stances, projectiles, fixed magic, movement and climbing.
- **Roadmap** rebuilt from the latest game TODO, adding finished work including every weapon's primary attack.
- **About:** made by ner software, currently a solo-dev project.
- **Tooling:** `tools/run.sh` and `tools/test.sh`; `_plugins/posts-lastmod-hook.rb`.
- **Post template** updated to Chirpy front matter, with image and YouTube embed examples.

## Why it matters
Turns a stub site into a full, browsable dev diary with a deploy pipeline.

## Notes
- 63 files, ~1,900 lines added, ~320 removed. Merged via PR #1.
- Posts contain `SCREENSHOT` / `CLIP` placeholder comments, filled in by later commits.

## Media

<!-- SCREENSHOT / VIDEO: add here -->
