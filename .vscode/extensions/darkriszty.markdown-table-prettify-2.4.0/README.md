# Markdown table prettifier extension for Visual Studio Code

[![Build Status](https://travis-ci.org/darkriszty/MarkdownTablePrettify-VSCodeExt.svg?branch=master)](https://travis-ci.org/darkriszty/MarkdownTablePrettify-VSCodeExt)

Makes tables more readable for humans. Compatible with the Markdown writer plugin's table formatter feature in Atom.

## Features

- Remove redundant ending table border if the beginning has no border, so the table _will not end_ with "|".
- Create missing ending table border if the beginning already has a border, so the table _will end_ with "|".
- Save space by not right-padding the last column if the table has no border.
- Support empty columns inside tables.
- Support column alignment options with ":".

![feature X](https://github.com/darkriszty/MarkdownTablePrettify-VSCodeExt/raw/master/assets/animation.gif)

## Extension Settings

The extension is available for markdown language mode. It can either format a selected table (`Format Selection`) or the entire document (`Format Document`).

## Known Issues

- Tables with mixed character widths (eg: CJK) are not always properly formatted (issue #4).