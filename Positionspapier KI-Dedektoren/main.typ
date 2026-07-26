// =====================================================================
//  main.typ — Inhalt des Positionspapiers
//  ---------------------------------------------------------------------
//  Kompilieren:  typst compile main.typ
//  Live-Vorschau: typst watch main.typ
//
//  Die Formatierung liegt vollständig in template.typ.
// =====================================================================

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


= Ausgangslage

Die rasche Verbreitung generativer KI-Werkzeuge verändert die Anforderungsprofile
in Studium, Prüfung und Beruf grundlegend. Schriftliche Leistungsnachweise lassen
sich je nach Aufgabenstellung teilweise oder vollständig automatisiert erstellen,
ohne dass sich dies zuverlässig nachweisen ließe. Zugleich wächst die Erwartung,
Studierende auf eine Arbeitswelt vorzubereiten, in der KI-gestützte Werkzeuge zum
Alltag gehören, ohne dass fachliche Urteilsfähigkeit, Eigenverantwortung und
kritischer Umgang mit Quellen an Bedeutung verliert.

Die DHBW steht damit vor einer doppelten Aufgabe: Sie muss die akademische
Integrität sichern und zugleich die berufliche Befähigung ihrer Studierenden
weiterentwickeln. Dazu gehören praktische KI-Kompetenz, der reflektierte Umgang
mit Medien und Quellen, die Sensibilität für Bias in KI-Systemen sowie ein
Bewusstsein für den erheblichen Ressourcenverbrauch dieser Technologien.

Der AStA plädiert ausdrücklich nicht für die Abschaffung schriftlicher Leistungen.
Stattdessen soll bei schriftlichen Prüfungsleistungen, bei denen eine unzulässige
Nutzung generativer KI grundsätzlich möglich ist, eine kurze mündliche Abfrage
standardmäßig in das jeweilige Modul integriert werden. Ergänzend fordert der AStA
DHBW-einheitliche und klar kommunizierte prüfungsrechtliche Regelungen,
insbesondere für Haus-, Praxis- und Studienarbeiten.


= Position des AStA in Kürze

Der AStA lehnt den Einsatz von KI-Detektoren im Prüfungskontext ab. Diese
Ablehnung ist eindeutig und nicht auf einzelne Anwendungsfälle beschränkt und
begründet sich aus den folgenden Aspekten:

- *Untauglich für Prüfungsentscheidungen.* Detektoren liefern ausschließlich
  Wahrscheinlichkeiten ohne Beweischarakter und dürfen über Täuschungsvorwürfe
  nicht entscheiden. Weder allein noch als „unterstützendes“ Indiz.

- *Unzuverlässig und verzerrt.* Detektoren sind leicht zu umgehen und
  benachteiligen systematisch bestimmte Gruppen. Ihre Fehler treffen gerade
  integre und nicht-muttersprachliche Studierende.

- *Datenschutzrechtlich unverantwortlich.* Externe Detektionsdienste verarbeiten
  personenbezogene Daten häufig intransparent und in Drittstaaten ohne klare
  Rechtsgrundlage.

Solange diese strukturellen Probleme bestehen, ist für den AStA kein
verantwortbarer Einsatz von KI-Detektoren erkennbar. Die richtige Antwort auf
generative KI ist nicht eine bessere Überwachungstechnologie, sondern eine
kompetenzorientierte Prüfungsgestaltung.


= Gründe für die Ablehnung von KI-Detektoren

== Funktionsweise von KI-Detektoren

Um die Problematik von KI-Detektoren genauer beleuchten zu können, muss zu Beginn
die Funktionsweise dieser erläutert werden. Im Gegensatz zu menschlichen Lesern
analysieren KI-Detektoren Texte nicht auf den inhaltlichen Sinn, sondern auf
statistische Muster. Dabei stützen sich Detektoren auf Metriken wie die
Perplexität, d.\u{2009}h. die Vorhersagbarkeit der Wortwahl, und die Burstiness,
d.\u{2009}h. die Varianz der Satzlänge und -komplexität @gehrmann2019. Da große
Sprachmodelle (engl. Large Language Models, LLMs) den statistisch
wahrscheinlichsten nächsten Baustein, ein sog. Token, vorhersagen, produzieren
LLMs Texte mit geringer Perplexität und Burstiness. Ein KI-Detektor klassifiziert
dementsprechend Texte mit großer Vorhersagbarkeit der Wortwahl, d.\u{2009}h.
niedriger Perplexität, und niedriger Burstiness, d.\u{2009}h. Sätze in
gleichmäßiger Länge und identischer Struktur, als KI-generiert.

== Geringe Genauigkeit und Fehlklassifikationen

Diese statistische Klassifikation ist fehleranfällig, da sie ausschließlich auf
Wahrscheinlichkeiten beruht. Wird ein von Menschen verfasster Text als
KI-generiert eingestuft, spricht man von einem sog. False Positive.

Ein bekanntes Beispiel ist die Einordnung der Verfassung der Vereinigten Staaten
von Amerika als KI-generiert. Dabei wirken zwei Effekte zusammen: Zum einen
handelt es sich um ein juristisches Dokument mit präzisen, formelhaften
Formulierungen und geringer sprachlicher Varianz. Zum anderen ist der Text nach
Angaben des GPTZero-Entwicklers Edward Tian in den Trainingsdaten vieler
Sprachmodelle stark überrepräsentiert, sodass diese Modelle darauf trainiert sind,
ähnliche Texte zu erzeugen @edwards2023. Der Detektor erkennt in diesem Fall also
gewissermaßen sein eigenes Vorbild wieder.

Dass es sich nicht um Einzelfälle handelt, zeigen systematische Untersuchungen.
Eine internationale Studie, die verbreitete Detektionswerkzeuge unter
kontrollierten Bedingungen getestet hat, kam zu dem Ergebnis, dass keines von
ihnen zuverlässig zwischen menschlichen und KI-generierten Texten unterscheidet
@weberwulff2023. Selbst große Anbieter empfehlen ihre eigenen Klassifikatoren
nicht mehr: OpenAI stellte den eigenen Detektor am 20. Juli 2023 wegen zu geringer
Trefferquote ein. Bereits in der herstellereigenen Evaluation bei Veröffentlichung
des Werkzeugs wurden nur rund ein Viertel der KI-Texte korrekt erkannt, während
fast jeder zehnte menschliche Text fälschlich als KI eingestuft wurde @openai2023.

Hinzu kommt ein verbreiteter Denkfehler im Umgang mit Fehlerquoten. Aus einer
angegebenen Falsch-Positiv-Rate von einem Prozent folgt gerade nicht, dass ein
markierter Text mit 99-prozentiger Wahrscheinlichkeit KI-generiert ist. Diese
Wahrscheinlichkeit hängt zusätzlich von der Basisrate ab, also vom tatsächlichen
Anteil KI-generierter Arbeiten im geprüften Jahrgang — und dieser Anteil ist in
der Praxis grundsätzlich unbekannt @bassett2026. Ein Detektionswert lässt sich
damit nicht sinnvoll in eine Aussage über den Einzelfall übersetzen.

Solche Fehlklassifikationen erzeugen zudem einen „Chilling Effect“: Schreibende
geraten unter Generalverdacht und richten ihr Schreiben defensiv an vermeintlich
unverdächtigen Formulierungen aus, was Leistungsbereitschaft und gestalterische
Freiheit beeinträchtigt @giray2025.

== Umgehbarkeit von KI-Detektoren

KI-Detektoren lassen sich mit geringem Aufwand umgehen. Bereits leichte
Überarbeitungen, Paraphrasierungen oder der Umweg über eine maschinelle
Übersetzung senken die Erkennungsrate deutlich @weberwulff2023. Es existieren
Werkzeuge, die genau darauf ausgelegt sind @perkins2024.

Daraus folgt ein Einwand, der die Abschreckungswirkung von Detektoren
grundsätzlich in Frage stellt: Wer die Umgehung beherrscht, wird nicht erfasst.
Detektoren messen deshalb weniger die unzulässige Nutzung generativer KI als
vielmehr die fehlende Routine im Umgang mit ihr sowie den fehlenden Zugang zu
leistungsfähigeren Werkzeugen @bassett2026. Sie belasten damit systematisch die
weniger versierten Studierenden, während sie gerade diejenigen nicht erreichen,
auf die sie zielen.

== Bias gegenüber Nicht-Muttersprachlern

Bei der Klassifikation von Texten von Nicht-Muttersprachlern kommt es zu
systematischen Verzerrungen, sog. Bias. Eine Studie der Universität Stanford aus
dem Jahr 2023 prüfte sieben verbreitete Detektoren an 91 TOEFL-Essays. Die
Detektoren stuften im Durchschnitt über 61\u{2009}% dieser Essays fälschlich als
KI-generiert ein, während Texte muttersprachlicher Verfasser nahezu fehlerfrei
erkannt wurden @liang2023.

Erklären lässt sich der Befund mit der Funktionsweise der Detektoren: Wer in einer
Fremdsprache formuliert, verwendet tendenziell kürzere Sätze, einen kleineren
Wortschatz und weniger komplexe Konstruktionen. Perplexität und Burstiness sinken
— und genau das werten Detektoren als Hinweis auf KI.

Die Anbieter haben auf die Studie reagiert. GPTZero veröffentlichte 2023 ein
überarbeitetes Modell und bezeichnete den Befund als überholt. Eine unabhängige
Nachmessung an demselben Datensatz ergab für dieses überarbeitete Modell jedoch
weiterhin eine Falsch-Positiv-Rate von 7,7\u{2009}% @emi2024. Auch nach der
Nachbesserung wird also etwa jeder dreizehnte Text zu Unrecht markiert. Für
internationale duale Studierende sowie duale Studierende mit Migrationshintergrund
wiegt das besonders schwer: Eine Fehlerquote, die sich nicht zufällig, sondern
entlang der sprachlichen Herkunft verteilt, verstärkt bestehende Ungleichheiten
und erzeugt reale Benachteiligungen.

== Rechtliche Einordnung

Der Einsatz *externer* Detektionsdienste ist datenschutzrechtlich fragwürdig. Vor
der Einführung von KI-Anwendungen, die personenbezogene oder studienrelevante
Daten verarbeiten, sind klare Rechtsgrundlagen, definierte Verantwortlichkeiten
und eine Datenschutz-Folgenabschätzung nach DSGVO Art.\u{00A0}35 erforderlich.
Viele Dienste verarbeiten Texte in Rechenzentren außerhalb der EU, teils ohne
transparenten Umgang mit Speicherung und Weiterverwendung. Damit setzen
Hochschulen die Daten ihrer Studierenden und sich selbst rechtlichen Risiken aus.
Hinzu kommt im Kontext der DHBW, dass Studienarbeiten häufig mit Sperrvermerken
versehen sind, da unternehmensintern Daten verwendet werden. Ein Verstoß gegen
einen solchen Sperrvermerk durch den Upload in einen externen Dienst setzt die
DHBW einem rechtlichen Risiko und möglichen Klagen der dualen Partner aus.

Ebenfalls anzumerken ist, dass im deutschen Prüfungsrecht die Hochschule die
Beweislast trägt. Bei einem Täuschungsvorwurf muss sie die Täuschung nachweisen.
Da Detektionssoftware ausschließlich Wahrscheinlichkeiten liefert und keine
Beweise im juristischen Sinn, ist sie als Grundlage für disziplinarische Maßnahmen
nicht tragfähig. Ein Sanktionsverfahren auf einem Detektionswert aufzubauen, wäre
rechtlich fragwürdig, angreifbar und gegenüber den Betroffenen unfair, denn ein
Detektionswert ist kein Beweismittel und darf auch nicht als „unterstützendes“
Indiz in ein Täuschungsverfahren einfließen. Wer einem unzuverlässigen
Wahrscheinlichkeitswert über den Umweg der freien Beweiswürdigung doch Gewicht
verleiht, verlagert die Beweislast faktisch auf die Studierenden und unterläuft
den Grundsatz fairer Prüfungen. Der AStA lehnt eine solche Verwendung ausdrücklich
ab.

== Position des AStA

Wir benennen den Effekt bewusst zweiseitig, denn eine glaubwürdige
Integritätssicherung wirkt abschreckend auf Täuschungsversuche und ist ein
legitimes Ziel. Der entscheidende Unterschied ist, dass diese Abschreckung nicht
auf der Bestrafung Unschuldiger beruhen darf. Genau das aber riskiert ein
Verfahren, das Fehlalarme zur Sanktionsgrundlage macht. Die Schwächen der
KI-Detektion sind technischer, rechtlicher, ethischer und pädagogischer Natur. In
ihrer Summe lassen sie sich nicht beheben, ohne das Verfahren selbst aufzugeben.
Der AStA zieht daraus eine klare Konsequenz: *KI-Detektoren gehören nicht in den
Prüfungskontext.* Das bedeutet nicht die Abschaffung schriftlicher Arbeiten,
sondern den Verzicht auf eine untaugliche Überwachungstechnologie zugunsten einer
unmittelbaren fachlichen Überprüfung der eingereichten Leistung.

Der naheliegende Vergleich mit Plagiatssoftware trägt die Detektoren gerade nicht,
denn ein Plagiatsbefund verweist auf eine konkrete, überprüfbare Quelle, die ein
Mensch nachlesen und bestätigen kann. Ein KI-Detektor liefert dagegen nur eine
Wahrscheinlichkeit ohne nachprüfbaren Beleg. Es gibt nichts, was sich gegenprüfen
ließe. Was bei Plagiaten ein *überprüfbarer Hinweis* ist, bleibt bei KI-Detektoren
eine *bloße Behauptung*. Der Vergleich rechtfertigt deshalb keinen Einsatz,
sondern unterstreicht die Ablehnung.


= Fachliche Klärung statt technischer Detektion

Bei schriftlichen Prüfungsleistungen, bei denen die Möglichkeit einer unzulässigen
KI-Nutzung besteht, soll standardmäßig eine kurze mündliche Abfrage in das
jeweilige Modul integriert werden. Dabei wird ausschließlich überprüft, ob die
studierende Person die Inhalte ihrer Arbeit verstanden hat, zentrale Aussagen
erläutern und fachliche Entscheidungen begründen kann.

Ziel ist nicht der Nachweis der Urheberschaft jedes einzelnen Satzes, sondern die
Feststellung, ob eine nachvollziehbare eigenständige Auseinandersetzung mit dem
Thema und den eingereichten Inhalten stattgefunden hat.

Enthält das Modul bereits eine mündliche Prüfung, kann diese Aufgabe durch den
bestehenden Prüfungsteil übernommen werden. Andernfalls wird eine kurze mündliche
Abfrage als zusätzlicher, verbindlicher Prüfungsbestandteil in das Modul
aufgenommen. Eine umfassende Änderung der bestehenden Prüfungsformate ist dafür
nicht erforderlich.

Die mündliche Abfrage wird nicht benotet, sondern ausschließlich mit „bestanden“
oder „nicht bestanden“ bewertet. Die Anforderungen und Bewertungskriterien müssen
vorab transparent kommuniziert und für alle Studierenden einheitlich angewendet
werden. Auf diese Weise wird die fachliche Auseinandersetzung unmittelbar
überprüft, ohne auf unzuverlässige KI-Detektoren zurückzugreifen.


= Position und Forderungen des AStA

*Kernthese:* Der AStA lehnt den Einsatz von KI-Detektoren in schriftlichen
Arbeiten ab. Sie sind unzuverlässig, verzerrt, leicht umgehbar,
datenschutzrechtlich bedenklich und ohne Beweischarakter.

== Prinzipien

- *Fairness:* keine Bewertung oder Sanktion auf Basis unsicherer, verzerrter oder
  leicht täuschbarer Tools.

- *Transparenz:* klare Prüfungsformate mit vorab kommunizierten Kriterien und
  Rubriken sowie Einsicht in Protokolle.

- *Verhältnismäßigkeit:* Maßnahmen, die Integrität sichern, ohne Grundrechte zu
  gefährden, und die Kompetenzen angemessen überprüfen.

- *Inklusion:* aktive Unterstützung für Studierende, die in Prüfungssituationen
  besonders belastet sind — über alle Prüfungsformate hinweg.

== Kernforderungen zum Prüfungswesen

- Kein Einsatz von KI-Detektoren als Grundlage für Prüfungs- oder
  Sanktionsentscheidungen. Bei schriftlichen Prüfungsleistungen, bei denen eine
  unzulässige Nutzung generativer KI grundsätzlich möglich ist, wird stattdessen
  standardmäßig eine kurze mündliche Abfrage für alle Studierenden in das
  jeweilige Modul integriert.

- DHBW-einheitliche, klar kommunizierte prüfungsrechtliche Regelungen in allen
  Prüfungsformen, insbesondere zur Nutzung von KI sowie für Haus-, Praxis- und
  Studienarbeiten.


= Fazit

KI-Detektoren gehören nicht in den Prüfungskontext. Sie sind technisch
unzuverlässig, leicht umgehbar, verzerrt zulasten bestimmter
Studierendengruppen, datenschutzrechtlich bedenklich und besitzen keinen
verlässlichen Beweischarakter. Der AStA lehnt ihren Einsatz daher ab.

Dies bedeutet nicht die Abschaffung schriftlicher Prüfungsleistungen. Bei
Prüfungen, bei denen eine unzulässige Nutzung generativer KI grundsätzlich möglich
ist, soll stattdessen standardmäßig eine kurze mündliche Abfrage für alle
Studierenden in das jeweilige Modul integriert werden. Bestehende mündliche
Prüfungsteile können diese Aufgabe übernehmen. Die Abfrage wird nicht benotet,
sondern ausschließlich mit „bestanden“ oder „nicht bestanden“ bewertet.


= Quellen

#bibliography(
  "references.bib",
  title: none,
  style: "institute-of-electrical-and-electronics-engineers",
)
