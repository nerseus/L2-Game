---
title: "Faster iteration: skipping the domain reload"
date: 2026-09-08 19:51:43 -0500
categories: [Dev Diary, Tools]
tags: [tools, unity, workflow]
description: "A behind-the-scenes change that makes every test run start faster."
# image:
#   path: /assets/img/posts/2026-09-08-faster-iteration.png   # 1200x630 social preview
---

<!-- Source: L2 PR #8. First pass generated from the file changes; edit freely. -->
Not a visible feature, but one that pays off every day.

By default, Unity reloads all of the game's code every time you press Play. On a project
this size that's a noticeable wait, many times an hour. Unity can skip that reload, but
only if the code doesn't rely on leftover static state from the last run.

This change went through the networking library, its add-ons (movement, interest
management, animation), the sample's own code and a few plugins, and made each one reset
its static state properly on entering Play mode. The result is the same behaviour on
every run, with a much shorter wait.
