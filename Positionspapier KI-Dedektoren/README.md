# Positionspapier KI-Detektoren — Typst-Projekt

Dieses Projekt setzt das Positionspapier des AStA (DHBW) mit
[Typst](https://typst.app) — dazu unten mehr.

## Dateien

| Datei             | Inhalt                                                        |
|-------------------|---------------------------------------------------------------|
| `main.typ`        | **Der Text** des Papiers. Hier änderst du Inhalte.            |
| `template.typ`    | **Die Formatierung** (Schrift, Farben, Ränder, Überschriften, Titelblock). Hier änderst du das Layout. |
| `references.bib`  | Die 9 Quellen (BibTeX). Zitiert wird im Text mit `@schlüssel`. |
| `positionspapier.pdf` | Beispiel-Ausgabe zum Vergleich.                          |

## Kompilieren

Typst installieren (einmalig): <https://github.com/typst/typst/releases>
oder `winget install Typst.Typst` / `brew install typst`.

```bash
typst compile main.typ            # erzeugt main.pdf
typst watch main.typ              # Live-Vorschau, kompiliert bei jedem Speichern
```

Am komfortabelsten: **VS Code** mit der Erweiterung *Tinymist Typst* —
Vorschau live neben dem Editor, ganz ohne Kommandozeile.
Alternativ der Online-Editor auf <https://typst.app> (Dateien hochladen).

## Formatierung anpassen (in `template.typ`)

Ganz oben im Abschnitt `EINSTELLUNGEN` liegen die wichtigsten Stellschrauben:

- **Farbe** über `farbe-akzent` (Überschriften, Linien, Hervorhebungen).
- **Schrift** über `schrift-text` / `schrift-titel`. Die Wunschschriften
  (*Libertinus*) stehen an erster Stelle; ist sie nicht installiert, greift
  automatisch ein Fallback. Für das echte Libertinus-Bild ggf.
  [Libertinus](https://github.com/alerque/libertinus) installieren.
- **Schriftgröße / Zeilen- und Absatzabstand** über `groesse-text`,
  `zeilenabstand`, `absatzabstand`.
- **Seitenränder** über `rand`.

Tiefergehende Änderungen (Aussehen der Überschriften, Fußzeile, Titelblock,
Leitsatz-Box) stehen darunter in der Funktion `positionspapier` — jeweils
kommentiert.

## Quellen ergänzen

Neue Quelle in `references.bib` eintragen (mit eindeutigem Schlüssel), im Text
mit `@schlüssel` zitieren — Nummerierung und Literaturverzeichnis erzeugt Typst
automatisch (IEEE-Stil, d.h. `[1]`, `[2]` …).

## Hinweis zu Korrekturen gegenüber dem Google-Doc

Beim Übertragen wurden zwei offensichtliche Tippfehler in Überschriften
korrigiert: „Umgebarkeit von KI-Dedektoren“ → **„Umgehbarkeit von
KI-Detektoren“**. Der übrige Text wurde inhaltlich unverändert übernommen.
