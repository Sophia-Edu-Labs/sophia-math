#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 1]
#v(40pt)
Wenn $T$ eine lineare Abbildung ist, dann ist $T(0)$ gleich:
#v(40pt)
#only("-1")[a) 0]#only("2-")[#text(fill:green)[a) 0]]
#v(10pt)
#only("-2")[b) 1]#only("3-")[#text(fill:red)[b) 1]]
#v(10pt)
#only("-3")[c) $T(1)$]#only("4-")[#text(fill:red)[c) $T(1)$]]
#v(10pt)
#only("-4")[d) Keine der oben genannten]#only("5-")[#text(fill:red)[d) Keine der oben genannten]]

#only("1")[#voiceover("Das ist richtig, gute Arbeit! Schauen wir uns an, warum a) 0 die richtige Antwort ist.")]
#only("2")[#voiceover("Wenn $T$ eine lineare Abbildung ist, dann gilt per Definition $T(0) = 0$. Dies ist eine der grundlegenden Eigenschaften linearer Abbildungen.")]
#only("3")[#voiceover("b) 1 ist falsch. Es gibt keine allgemeine Regel, die besagt, dass $T(0) = 1$ für lineare Abbildungen gilt.")]
#only("4")[#voiceover("c) $T(1)$ ist ebenfalls falsch. Obwohl $T(1)$ in einigen Fällen 0 sein könnte, ist dies keine allgemeine Regel für alle linearen Abbildungen.")]
#only("5")[#voiceover("d) Keine der oben genannten ist falsch, weil a) 0 tatsächlich die richtige Antwort ist, wie wir zuvor gesehen haben.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beweis]
#v(40pt)
#only("1-")[Beweisen wir, dass $T(0) = 0$ für eine lineare Abbildung $T$ gilt:]
#v(20pt)
#only("2-")[- Per Definition gilt $T(c u) = c T(u)$ für jeden Skalar $c$ und Vektor $u$]
#v(20pt)
#only("3-")[- Setzen wir $c = 0$ und $u$ als beliebigen Vektor. Dann:]
#v(20pt)
#only("4-")[$T(0 u) = 0 T(u)$]
#v(20pt)
#only("5-")[$T(0) = 0$]
#v(20pt)
#only("6-")[Daher gilt $T(0) = 0$ für jede lineare Abbildung $T$. ■]

#only("1")[#voiceover("Nun beweisen wir, dass $T(0) = 0$ für eine lineare Abbildung $T$ gilt.")]
#only("2")[#voiceover("Per Definition erfüllt eine lineare Abbildung $T(c u) = c T(u)$ für jeden Skalar $c$ und Vektor $u$.")]
#only("3")[#voiceover("Wählen wir $c = 0$ und lassen $u$ ein beliebiger Vektor sein.")]
#only("4")[#voiceover("Dann haben wir $T(0 u) = 0 T(u)$.")]
#only("5")[#voiceover("Da $0 u = 0$ für jeden Vektor $u$ ist und $0 T(u) = 0$, erhalten wir $T(0) = 0$.")]
#only("6")[#voiceover("Somit haben wir bewiesen, dass $T(0) = 0$ für jede lineare Abbildung $T$ gilt. Damit ist der Beweis abgeschlossen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Für eine lineare Abbildung $T$ gilt immer $T(0) = 0$ 🎯]
#v(20pt)
#only("2-")[- Dies ist eine grundlegende Eigenschaft linearer Abbildungen 📜]
#v(20pt)
#only("3-")[- Es folgt aus der Definition $T(c u) = c T(u)$ 🧮]

#only("1")[#voiceover("Die wichtigste Erkenntnis ist, dass für eine lineare Abbildung $T$ immer $T(0) = 0$ gilt.")]
#only("2")[#voiceover("Dies ist eine grundlegende Eigenschaft linearer Abbildungen.")]
#only("3")[#voiceover("Es folgt direkt aus der Definition einer linearen Abbildung, die besagt, dass $T(c u) = c T(u)$ für jeden Skalar $c$ und Vektor $u$ gilt.")]
]