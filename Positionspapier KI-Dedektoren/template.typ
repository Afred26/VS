// =====================================================================
//  template.typ — Formatierung des Positionspapiers
//  ---------------------------------------------------------------------
//  Alle Layout- und Design-Einstellungen sind hier gebündelt.
//  Passe die Werte im Abschnitt "EINSTELLUNGEN" an, um Schrift,
//  Farben, Ränder und Abstände zu ändern, ohne den Text in main.typ
//  anfassen zu müssen.
// =====================================================================

// ------------------------- EINSTELLUNGEN ------------------------------

// Farben (DHBW-Markenfarben, siehe Bilder/dhbw-icon.svg / CD-Manual)
#let farbe-akzent   = rgb("#E2001A")   // Überschriften, Linien (DHBW-Rot)
#let farbe-text     = rgb("#1a1a1a")   // Fließtext
#let farbe-hervorh  = rgb("#8E1016")   // fette Hervorhebungen im Text (DHBW-Dunkelrot)

// Schrift
#let schrift-text   = ("Libertinus Serif", "Linux Libertine", "TeX Gyre Termes")
#let schrift-titel  = ("Libertinus Sans", "Linux Biolinum", "Liberation Sans")
#let groesse-text   = 11pt
#let zeilenabstand  = 0.72em    // Durchschuss (leading)
#let absatzabstand  = 1.25em     // Abstand zwischen Absätzen

// Seite
#let seitenformat   = "a4"
#let rand           = (top: 2.6cm, bottom: 2.4cm, left: 2.6cm, right: 2.6cm)

// Logo
#let farbe-logo-grau = rgb("#5d6971")   // Grauton des DHBW-Schriftzugs

// ----------------------------------------------------------------------


// AStA/DHBW-Logo (Icon aus Bilder/dhbw-icon.svg + Schriftzüge).
// Eigenes offizielles Logobild? Einfach eine Bild-/Grafikdatei unter
// "Bilder/" ablegen und beim Aufruf von positionspapier(...) per
// logo: image("Bilder/dein-logo.png", height: 2.2cm) übergeben —
// das ersetzt dieses Standard-Logo vollständig.
#let logo-asta-dhbw(icon-hoehe: 1.55cm) = {
  set text(font: schrift-titel)
  grid(
    columns: (auto, auto),
    column-gutter: 0.4em,
    align: top + left,
    image("Bilder/AStA_Icon.png", height: 60pt),
  )
}

// Hauptfunktion: Diese Funktion umschließt das gesamte Dokument.
#let positionspapier(
  titel: none,
  untertitel: none,
  koerperschaft: none,
  leitsatz: none,
  datum: none,
  logo: none,
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
    hyphenate: false,
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
    block(above: 1em, below: 0.8em)[
      #it
      #v(-0.4em)
      #line(length: 100%, stroke: 1pt + farbe-akzent)
    ]
  }
  // Ebene 2 (Unterabschnitte)
  show heading.where(level: 2): it => {
    set text(size: 12.5pt)
    block(above: 2.5em, below: 1.25em, it)
  }

  // --- Fette Hervorhebungen einfärben ---
  show strong: set text(fill: farbe-hervorh)

  // --- Listen ---
  set list(indent: 0.6em, spacing: 0.8em, marker: text(farbe-akzent)[•])

  // --- Links ---
  show link: set text(fill: farbe-akzent)

  // --- Zitate/Bibliografie mit IEEE-Stil (nummeriert [1], [2] …) ---
  set cite(style: "institute-of-electrical-and-electronics-engineers")

  // =================== TITELBLOCK ===================
  grid(
    columns: if logo != none { (1fr, auto) } else { (1fr,) },
    column-gutter: 1.5em,
    align: (left + top, right + top),
    block(width: 100%)[
      #set par(justify: false)
      #if koerperschaft != none [
        #set text(font: schrift-titel, size: 10.5pt, fill: gray.darken(25%))
        #koerperschaft
        #v(0.4em)
      ]
      #set text(font: schrift-titel, fill: farbe-akzent)
      #text(size: 21pt, weight: "bold")[#titel]
      #if untertitel != none [
        #v(0.3em)
        #text(size: 13pt, weight: "regular", fill: farbe-text)[#untertitel]
      ]
    ],
    if logo != none { logo },
  )

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
