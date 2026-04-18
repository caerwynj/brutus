# Brutus

A WYSIWYG Markdown editor for Inferno OS, written in Limbo.

Brutus opens a Markdown file, renders it with styled fonts (headings,
bold, italic, inline code, fenced code, bullet lists), and saves back
to Markdown. A Raw/Render toggle swaps between the formatted view and
the raw Markdown source in place.

## Build

Requires a working Inferno installation. From a host shell:

```sh
export ROOT=$HOME/inferno64
export SYSHOST=Linux
export OBJTYPE=amd64
mk
```

This produces `brutus.dis`.

## Run

```sh
sh test.sh                  # opens test.md
sh test.sh './brutus foo.md'
```

Or from inside an Inferno shell:

```
brutus foo.md
```

## Toolbar

| Button | Action                                           |
|--------|--------------------------------------------------|
| File   | New / Open / Name / Write / pick open buffer     |
| B      | Toggle **bold** on the selection (or word)       |
| I      | Toggle *italic* on the selection (or word)       |
| H1-H3  | Make the selected lines a heading at that level  |
| Raw    | Flip to raw Markdown source (label becomes Render) |
| Put    | Save the current file as Markdown                |

Middle mouse opens a cut/paste/snarf/look menu. Right-click plumbs the
word under the cursor.

## Markdown subset

Read and written:

- `# H1`, `## H2`, `### H3` headings
- `**bold**` / `__bold__`
- `*italic*` / `_italic_`
- `` `inline code` ``
- Fenced ` ``` ` code blocks and 4-space indented code
- `- item` / `* item` bullet lists
- Blank-line paragraph breaks

## Files

- `brutus.b` - editor source
- `mkfile` - build config
