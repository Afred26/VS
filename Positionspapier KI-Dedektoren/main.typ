
#import "template.typ": positionspapier, logo-asta-dhbw

#show: positionspapier.with(
  koerperschaft: [Allgemeiner Studierenden-Ausschuss (AStA) — DHBW],
  titel: [Positionspapier zum Einsatz von KI-Detektoren im Hochschulkontext],
  untertitel: none,
  leitsatz: [
    Der AStA lehnt den Einsatz von KI-Detektoren in schriftlichen Arbeiten ab
    und fordert stattdessen eine einheitliche fachliche Überprüfung.
  ],
  datum: none,
  // Standard-Logo (AStA/DHBW-Schriftzug, siehe template.typ).
  // Eigenes offizielles Logobild stattdessen verwenden: Datei unter
  // Bilder/ ablegen und diese Zeile z. B. ersetzen durch
  // logo: image("Bilder/asta-logo.png", height: 2.2cm),
  logo: logo-asta-dhbw(),
)

#include "Text/0_Ausgangslage.typ"
#include "Text/1_ Position des AStA in Kürz.typ"
#include "Text/2_Gründe für die Ablehnung von KI-Detektore.typ"
#include "Text/3_Fachliche Klärung statt technischer Detektion.typ"
#include "Text/4_Position und Forderungen des AStA.typ"
#include "Text/5_Fazit.typ"

= Quellen

#bibliography(
  "references.bib",
  title: none,
  style: "institute-of-electrical-and-electronics-engineers",
)
