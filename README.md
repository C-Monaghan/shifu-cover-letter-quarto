# Shifu-cover-letter

A clean, minimal cover-letter format for Quarto documents, designed for academic
manuscripts and journal submissions.

The format is built with Typst

## Installing

Install the format directly from GitHub using:

``` bash
quarto add C-Monaghan/shifu-cover-letter-quarto
```

## Getting started

Create a Quarto document and specify shifu-cover-letter as the format:

``` yaml
title: "Cover Letter"
format: shifu-cover-letter
```

You can then write the body of your cover letter normally in Markdown:

## Configuration

The cover letter extension also provides options for the main pieces of
information typically included in an academic cover letter.

``` yaml
title: Manuscript
Title format:
  shifu-cover-letter:
    journal-name: "Journal Name"
    article-type: "Original Article"
    manuscript-id: "ABC-123"
    editor-name: "Professor Editor"
    signature: true
```
