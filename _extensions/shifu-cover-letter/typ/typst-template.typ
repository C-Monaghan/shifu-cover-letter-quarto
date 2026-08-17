// ============================================================================
// CUSTOM TYPST TEMPLATE
// Author: Cormac Monaghan
// Last modified: 2026/08/12
// Description: General-purpose Typst template for academic cover letters
// ============================================================================

// Colours --------------------------------------------------------------------
#let ink = rgb("#263238")
#let darkgray = rgb("#3F4849")
#let muted = rgb("#6B7475")
#let light-grey = rgb("#9AA2A3")

#let accent = rgb("#356B70")
#let accent-light = rgb("#EEF4F4")

// Fonts ----------------------------------------------------------------------
#let body-font = "New Computer Modern"

#let shifu-cover-letter(
  // Basic meta data
  title: none,
  authors: none,
  research-title: none,
  signature: false,
  date: none,

  // Journal information
  journal-name: none,
  article-type: none,
  manuscript-id: none,

  // Editor information
  editor-name: none,

  // Page settings
  cols: 1,
  margin: (x: 1.25in, y: 1.25in),
  paper: "a4",
  lang: "en",
  region: "IE",

  // Font settings
  font: body-font,
  fontsize: 10.5pt,

  pagenumbering: none,
  doc,
) = {
  // Page setup ---------------------------------------------------------------
  set page(
    paper: paper,
    margin: margin,
    numbering: pagenumbering,
    header: (context align(right, text(size: 8pt, fill: light-grey)[
      #if manuscript-id != [] { [Manuscript ID: #manuscript-id | ] }
      #if date != [] { [#date] }
    ])),
    footer: none,
  )

  // Paragraph styling --------------------------------------------------------
  set par(
    justify: true,
    leading: 0.72em,
    first-line-indent: 0em,
  )

  // Typography ---------------------------------------------------------------
  set text(
    lang: lang,
    region: region,
    font: font,
    size: fontsize,
  )

  // The header of the document -----------------------------------------------
  // My name + academic information
  align(right, [
    #text(
      font: body-font,
      size: 20pt,
      weight: "bold",
      fill: ink
    )[#authors.at(0).name]

    #v(-0.25cm)

    #text(
      font: body-font,
      size: 9pt,
      fill: accent
    )[#research-title #sym.dot  #authors.at(0).affiliation]

    #v(-0.05cm)

    #text(
      font: body-font,
      size: 9pt,
      fill: muted
    )[#authors.at(0).email #sym.dot  #authors.at(0).orcid]

    #v(8pt)

    #line(length: 100%, stroke: 1pt + accent)

    #v(17pt)
  ])

  // Editor and Journal information
  align(left, [
    #grid(
      columns: (1fr, auto),
      gutter: 1em,

      [
        #text(
          font: body-font,
          size: 8pt,
          weight: "bold",
          fill: accent,
          tracking: 0.08em,
        )[EDITOR]

        #text(
        font: body-font,
        size: 10pt,
        weight: "medium",
      )[#editor-name]

      #text(
        font: body-font,
        size: 10pt,
        fill: muted
      )[#journal-name]

    ],
    )

    #v(10pt)

    // Manuscript title
    #text(
      font: body-font,
      size: 8pt,
      weight: "bold",
      fill: accent,
      tracking: 0.08em,
    )[MANUSCRIPT]

    #text(
      font: body-font,
      size: 12pt,
      weight: "bold",
      fill: ink,
    )[#title]
  ])

  // Beginning of document ----------------------------------------------------
  if cols == 1 {
    doc
  }

  // Signature ----------------------------------------------------------------
  v(1em)

  text[Yours sincerely,]
  v(-0.5em)
  if(signature != false) {image("assets/signature.png", height: 1cm)}
  v(-0.5em)
  text[On behalf of all authors]
}
