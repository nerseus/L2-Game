# Instructions for Claude

## Source of the dev diary: the private `nerseus/L2` repo

The posts in this site are written from the game's repo, `nerseus/L2` (private). The latest
post's `Source:` comment says which L2 PR it last covered; new posts start after that.

**If you try to read `nerseus/L2` and cannot (not attached, add_repo denied or rejected, clone
fails, auth error, 404, rate limit, anything):**

1. **Alert the user clearly and loudly.** Start the message with a line such as
   `⚠️ BLOCKED: I CANNOT READ THE L2 REPO ⚠️`, then say exactly what failed and the error.
2. **Stop. Do not move on.** Don't write posts from guesses, from this repo's own commits, or
   from memory of earlier work, and don't substitute another source.
3. **Wait for the user's explicit confirmation** on how to proceed before doing anything else.

To attach it: `add_repo` with owner `nerseus`, repo `L2`, then clone it (see the tool's
instructions). A first attempt can be rejected without the user ever seeing a prompt, so if it
is rejected, say so loudly and ask, rather than silently working around it.

## Content rules

See `NOTES.md`: never name the original game, its studio or its publisher; no extracted
original files or source code.
