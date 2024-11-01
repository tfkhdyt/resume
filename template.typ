// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set par(justify: true)
  set text(font: "Liberation Sans", hyphenate: false, size: 10pt)
  set par(leading: 1em)
  set page(margin: (x: 30pt, y: 40pt))
  show link: it => [
    #underline(offset: 2pt)[
      #it
    ]
  ]
  show link: set text(rgb("#2b2b95"))
  show heading: it => [
    #v(30pt)
    #align(center)[ 
      #text(size: 12pt)[#it]
    ]
    #pad(top: -5pt)[ 
      #line(length: 100%)
    ]
  ]
  show list: it => [
    #pad(left: 10pt)[#it]
  ]

  body
}