#!/usr/bin/env ruby
#
# Turns every "## Heading" section of a page with `collapsible_sections: true`
# into a <details> block, expanded by default. The summary counts the
# section's top-level list items, e.g. "Gameplay - 8 items".
#
# Keep writing the page as plain Markdown; the counts update on every build.

Jekyll::Hooks.register [:pages, :documents], :pre_render do |doc|
  next unless doc.data['collapsible_sections']

  # Split into the intro and one chunk per "## " heading (headings inside
  # fenced code blocks are not expected on these pages).
  parts = doc.content.split(/^(?=## )/)
  intro = parts.first.start_with?('## ') ? '' : parts.shift

  sections = parts.map do |part|
    heading, body = part.split("\n", 2)
    title = heading.sub(/^##\s+/, '').strip
    body = body.to_s

    # Top-level items only: nested items are details of the item above them.
    count = body.scan(/^[-*+] /).size
    summary = count.zero? ? title : "#{title} - #{count} #{count == 1 ? 'item' : 'items'}"

    <<~HTML
      <details class="roadmap-section" open markdown="1">
      <summary>#{summary}</summary>

      #{body.strip}

      </details>

    HTML
  end

  doc.content = intro + sections.join
end
