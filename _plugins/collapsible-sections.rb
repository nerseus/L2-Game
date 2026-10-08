#!/usr/bin/env ruby
#
# Turns every "## Heading" section of a page with `collapsible_sections: true`
# into a collapsed <details> block. The summary counts the section's
# checklist items, e.g. "Foundation (4 items complete)" or
# "Movement (9 out of 11 complete)". Nested checklist items are counted too.
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

    done = body.scan(/^\s*[-*+] \[[xX]\]/).size
    total = done + body.scan(/^\s*[-*+] \[ \]/).size

    summary =
      if total.zero?
        title
      elsif done == total
        "#{title} (#{total} #{total == 1 ? 'item' : 'items'} complete)"
      else
        "#{title} (#{done} out of #{total} complete)"
      end

    state = if total.zero? then 'none' elsif done == total then 'done' else 'open' end

    <<~HTML
      <details class="roadmap-section" data-state="#{state}" markdown="1">
      <summary>#{summary}</summary>

      #{body.strip}

      </details>

    HTML
  end

  doc.content = intro + sections.join
end
