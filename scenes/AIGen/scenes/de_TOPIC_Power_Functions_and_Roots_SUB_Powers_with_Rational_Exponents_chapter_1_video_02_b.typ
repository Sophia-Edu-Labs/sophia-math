#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Das Vereinfachen von $16^(1/4)$]
#v(40pt)
#only("1-")[Das war leider nicht korrekt, aber schau dir dieses Video an. 🎉]
#v(20pt)
#only("2-")[Schauen wir uns an, wie man $16^(1/4)$ Schritt für Schritt vereinfacht:]
#v(20pt)
#only("3-")[- $16^(1/4) = (16^1)^(1/4)$]
#v(10pt)
#only("4-")[- $= (2^4)^(1/4)$]
#v(10pt)
#only("5-")[- $= 2^(4 dot 1/4)$]
#v(10pt)
#only("6-")[- $= 2^1$]
#v(10pt)
#only("7-")[- $= 2$]
#v(40pt)
#only("1")[#voiceover("Das war leider nicht korrekt, aber schau dir dieses Video an.")]
#only("2")[#voiceover("Schauen wir uns an, wie man 16 hoch ein Viertel Schritt für Schritt vereinfacht:")]
#only("3")[#voiceover("Zuerst können wir 16 hoch ein Viertel als 16 hoch 1, alles hoch ein Viertel, umschreiben.")]
#only("4")[#voiceover("Nun, 16 ist dasselbe wie 2 hoch 4, also können wir es als 2 hoch 4, alles hoch ein Viertel, umschreiben.")]
#only("5")[#voiceover("Mit der Potenzregel für Exponenten können wir dies zu 2 hoch 4 mal ein Viertel vereinfachen.")]
#only("6")[#voiceover("4 mal ein Viertel ist einfach 1, also vereinfacht sich dies zu 2 hoch 1.")]
#only("7")[#voiceover("Und 2 hoch 1 ist einfach 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Das Vereinfachen von $16^(1/4)$]
#v(40pt)
#only("1-")[Also, die richtige Antwort ist:]
#v(20pt)
// Von Anfang bis Abschnitt 8 ist die Option schwarz. Ab Abschnitt 9 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) 2]#only("2-")[#text(fill:green)[a) 2]]
#v(10pt)
// Von Anfang bis Abschnitt 9 ist die Option schwarz. Ab Abschnitt 10 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) 4]#only("3-")[#text(fill:red)[b) 4]]
#v(10pt)
// Von Anfang bis Abschnitt 10 ist die Option schwarz. Ab Abschnitt 11 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) 8]#only("4-")[#text(fill:red)[c) 8]]
#v(10pt)
// Von Anfang bis Abschnitt 11 ist die Option schwarz. Ab Abschnitt 12 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) 16]#only("5-")[#text(fill:red)[d) 16]]

#only("1")[#voiceover("Also, die richtige Antwort ist:")]
#only("2")[#voiceover("a) 2. Gut gemacht!")]
#only("3")[#voiceover("b) 4 ist falsch. Denke daran, wir haben 16 hoch ein Viertel zu 2 vereinfacht, nicht zu 4.")]
#only("4")[#voiceover("c) 8 ist auch falsch. Wir sind bei unserem Vereinfachungsprozess nicht bei 8 angekommen.")]
#only("5")[#voiceover("Und d) 16 ist ebenfalls falsch. 16 war die ursprüngliche Basis, aber nach der Vereinfachung des Ausdrucks erhielten wir 2, nicht 16.")]
]