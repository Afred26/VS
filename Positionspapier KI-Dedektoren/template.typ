// =====================================================================
//  template.typ — Formatierung des Positionspapiers
//  ---------------------------------------------------------------------
//  Alle Layout- und Design-Einstellungen sind hier gebündelt.
//  Passe die Werte im Abschnitt "EINSTELLUNGEN" an, um Schrift,
//  Farben, Ränder und Abstände zu ändern, ohne den Text in main.typ
//  anfassen zu müssen.
// =====================================================================

// ------------------------- EINSTELLUNGEN ------------------------------

// Farben
#let farbe-akzent   = rgb("#1f3a5f")   // Überschriften, Linien (AStA-Blau)
#let farbe-text     = rgb("#1a1a1a")   // Fließtext
#let farbe-hervorh  = rgb("#1f3a5f")   // fette Hervorhebungen im Text

// Schrift
#let schrift-text   = ("Libertinus Serif", "Linux Libertine", "TeX Gyre Termes")
#let schrift-titel  = ("Libertinus Sans", "Linux Biolinum", "Liberation Sans")
#let groesse-text   = 11pt
#let zeilenabstand  = 0.72em    // Durchschuss (leading)
#let absatzabstand  = 0.9em     // Abstand zwischen Absätzen

// Seite
#let seitenformat   = "a4"
#let rand           = (top: 2.6cm, bottom: 2.4cm, left: 2.6cm, right: 2.6cm)

// ----------------------------------------------------------------------


// Hauptfunktion: Diese Funktion umschließt das gesamte Dokument.
#let positionspapier(
  titel: none,
  untertitel: none,
  koerperschaft: none,
  leitsatz: none,
  datum: none,
  body,
) = {
  // --- Grundlegende Dokument-Metadaten ---
  set document(title: titel, author: "AStA DHBW")

  // --- Seiten-Layout ---
  set page(
    paper: seitenformat,
    margin: rand,
    numbering: "1 / 1",
    number-align: center,
    footer: context [
      #set text(size: 8.5pt, fill: gray.darken(20%))
      #line(length: 100%, stroke: 0.4pt + gray.lighten(40%))
      #v(-0.3em)
      #grid(
        columns: (1fr, auto, 1fr),
        align: (left, center, right),
        [#koerperschaft],
        [Seite #context counter(page).display("1 von 1", both: true)],
        [KI-Detektoren],
      )
    ],
  )

  // --- Fließtext ---
  set text(
    font: schrift-text,
    size: groesse-text,
    fill: farbe-text,
    lang: "de",
    region: "DE",
    hyphenate: true,
  )
  set par(
    justify: true,
    leading: zeilenabstand,
    spacing: absatzabstand,
    first-line-indent: 0pt,
  )

  // --- Überschriften: Nummerierung & Stil ---
  set heading(numbering: "1.1")

  show heading: it => {
    set text(font: schrift-titel, fill: farbe-akzent, weight: "bold")
    it
  }
  // Ebene 1 (Hauptabschnitte)
  show heading.where(level: 1): it => {
    set text(size: 15pt)
    block(above: 1.6em, below: 0.8em)[
      #it
      #v(-0.4em)
      #line(length: 100%, stroke: 1pt + farbe-akzent)
    ]
  }
  // Ebene 2 (Unterabschnitte)
  show heading.where(level: 2): it => {
    set text(size: 12.5pt)
    block(above: 1.2em, below: 0.5em, it)
  }

  // --- Fette Hervorhebungen einfärben ---
  show strong: set text(fill: farbe-hervorh)

  // --- Listen ---
  set list(indent: 0.6em, spacing: 0.7em, marker: text(farbe-akzent)[•])

  // --- Links ---
  show link: set text(fill: farbe-akzent)

  // --- Zitate/Bibliografie mit IEEE-Stil (nummeriert [1], [2] …) ---
  set cite(style: "institute-of-electrical-and-electronics-engineers")

  // =================== TITELBLOCK ===================
  block(width: 100%)[
    #if koerperschaft != none [
      #set text(font: schrift-titel, size: 10.5pt, fill: gray.darken(25%))
      #smallcaps(koerperschaft)
      #v(0.4em)
    ]
    #set text(font: schrift-titel, fill: farbe-akzent)
    #text(size: 21pt, weight: "bold")[#titel]
    #if untertitel != none [
      #v(0.3em)
      #text(size: 13pt, weight: "regular", fill: farbe-text)[#untertitel]
    ]
  ]

  line(length: 100%, stroke: 1.5pt + farbe-akzent)

  if leitsatz != none [
    #v(0.4em)
    #block(
      fill: farbe-akzent.lighten(92%),
      inset: (x: 1em, y: 0.8em),
      radius: 3pt,
      width: 100%,
    )[
      #set text(style: "italic", size: 11.5pt)
      #leitsatz
    ]
  ]

  if datum != none [
    #v(0.3em)
    #align(right)[#text(size: 9.5pt, fill: gray.darken(20%))[Stand: #datum]]
  ]

  v(0.6em)

  // =================== INHALT ===================
  body
}
