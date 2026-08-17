// Now we show typst what to take from the Quarto yaml
#show: doc => shifu-cover-letter(
$if(title)$
  title: [$title$],
$endif$
$if(by-author)$
  authors: (
$for(by-author)$
$if(it.name.literal)$
    ( name: [$it.name.literal$],
      affiliation: [$for(it.affiliations)$$it.name$$sep$, $endfor$],
      email: [$it.email$],
      orcid: [$it.orcid$] ),
$endif$
$endfor$
    ),
$endif$
$if(research-title)$
  research-title: [$research-title$],
$endif$
$if(signature)$
  signature: [$signature$],
$endif$
$if(date)$
  date: [$date$],
$endif$
$if(journal-name)$
  journal-name: [$journal-name$],
$endif$
$if(journal-name)$
  article-type: [$article-type$],
$endif$
$if(journal-name)$
  manuscript-id: [$manuscript-id$],
$endif$
$if(journal-name)$
  editor-name: [$editor-name$],
$endif$
  doc,
)
