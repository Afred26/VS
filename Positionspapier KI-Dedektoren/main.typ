
#import "template.typ": positionspapier

#show: positionspapier.with(
  koerperschaft: [Allgemeiner Studierenden-Ausschuss (AStA) — DHBW],
  titel: [Positionspapier zum Einsatz von KI-Detektoren im Hochschulkontext],
  untertitel: none,
  leitsatz: [
    Der AStA lehnt den Einsatz von KI-Detektoren in schriftlichen Arbeiten ab
    und fordert stattdessen eine einheitliche fachliche Überprüfung.
  ],
  datum: none,
)

#include "Text/0_Ausgangslage.typ"
#pagebreak()
#include "Text/1_ Position des AStA in Kürz.typ"
#pagebreak()
#include "Text/2_Gründe für die Ablehnung von KI-Detektore.typ"
#pagebreak()
#include "Text/3_Fachliche Klärung statt technischer Detektion.typ"
#pagebreak()
#include "Text/4_Position und Forderungen des AStA.typ"
#pagebreak()
#include "Text/5_Fazit.typ"
#pagebreak()
= Quellen

#bibliography(
  "references.bib",
  title: none,
  style: "institute-of-electrical-and-electronics-engineers",
)
