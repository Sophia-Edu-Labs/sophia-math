#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Bernoulli-Verteilung]
#v(40pt)
#only("1-")[- #text(weight: "bold")[Modell] für Zufallsexperimente mit zwei möglichen Ausgängen]
#v(20pt)
#only("2-")[- #text(weight: "bold")[Beispiele:] Münzwurf, Erfolg/Misserfolg, Ja/Nein]
#v(20pt)
#only("3-")[- #text(weight: "bold")[Formal:] $X ~ "Ber"(p)$, wobei $p$ die Erfolgswahrscheinlichkeit ist]
#only("1")[
#voiceover("Die Bernoulli-Verteilung ist ein einfaches, aber sehr nützliches Modell in der Wahrscheinlichkeitstheorie. Sie beschreibt Zufallsexperimente, die nur zwei mögliche Ausgänge haben.")
]
#only("2")[
#voiceover("Typische Beispiele für Bernoulli-Experimente sind der Münzwurf mit den Ausgängen Kopf oder Zahl, der Erfolg oder Misserfolg bei einem Versuch, oder eine Ja/Nein-Entscheidung.")
]
#only("3")[
#voiceover("Formal schreiben wir X ~ Ber(p), um auszudrücken, dass die Zufallsvariable X Bernoulli-verteilt ist mit Erfolgswahrscheinlichkeit p. Der Parameter p liegt dabei immer zwischen 0 und 1.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[
- Münzwurf: Kopf (Erfolg) mit Wahrscheinlichkeit $p = 0.5$
]
#only("2-")[
- Zufallsvariable $X$:
- $X = 1$, wenn Kopf
- $X = 0$, wenn Zahl
]
#only("3-")[
- $P(X = 1) = p = 0.5$
- $P(X = 0) = 1 - p = 0.5$
]
#only("1")[
#voiceover("Betrachten wir als konkretes Beispiel einen fairen Münzwurf. Hier definieren wir 'Kopf' als Erfolg, der mit einer Wahrscheinlichkeit von p = 0.5 auftritt.")
]
#only("2")[
#voiceover("Wir führen eine Zufallsvariable X ein, die den Wert 1 annimmt, wenn Kopf geworfen wird, und den Wert 0, wenn Zahl geworfen wird.")
]
#only("3")[
#voiceover("Die Wahrscheinlichkeit, dass X den Wert 1 annimmt, ist gleich der Erfolgswahrscheinlichkeit p, also 0.5. Die Wahrscheinlichkeit für X = 0 ist entsprechend 1 - p, ebenfalls 0.5.")
]
]