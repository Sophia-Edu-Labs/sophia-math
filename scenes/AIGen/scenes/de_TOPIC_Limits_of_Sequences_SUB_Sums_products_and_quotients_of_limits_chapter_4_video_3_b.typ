#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzen kombinieren]
#v(40pt)
- Gegeben: $a_n = 1/n$ und $b_n = 2/n^2$
- Gesucht: $lim_(n -> infinity) (a_n + b_n) / a_n$
#only("1")[#voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben zwei Folgen gegeben, a_n gleich 1 durch n und b_n gleich 2 durch n Quadrat. Wir müssen das Limes berechnen, wenn n gegen unendlich geht, von a_n plus b_n, alles geteilt durch a_n.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Finde $lim_(n -> infinity) a_n$]
#v(40pt)
#only("1-")[- $a_n = 1/n$]
#only("2-")[- $lim_(n -> infinity) 1/n = 0$]
#only("1")[#voiceover("Zuerst finden wir das Limes von a_n. Wir wissen, dass a_n gleich 1 durch n ist.")]
#only("2")[#voiceover("Wenn n gegen unendlich geht, nähert sich 1 durch n der 0. Also ist das Limes von a_n gleich 0.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Finde $lim_(n -> infinity) b_n$]
#v(40pt)
#only("1-")[- $b_n = 2/n^2$]
#only("2-")[- $lim_(n -> infinity) 2/n^2 = 0$]
#only("1")[#voiceover("Als nächstes finden wir das Limes von b_n. Wir wissen, dass b_n gleich 2 durch n Quadrat ist.")]
#only("2")[#voiceover("Wenn n gegen unendlich geht, nähert sich 2 durch n Quadrat ebenfalls der 0. Also ist das Limes von b_n gleich 0.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Anwenden der Grenzwertgesetze]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (a_n + b_n) / a_n$]
#only("2-")[- $= (lim_(n -> infinity) a_n + lim_(n -> infinity) b_n) / lim_(n -> infinity) a_n$]
#only("3-")[- $= (0 + 0) / 0$]
#only("4-")[- $= 0 / 0$ 🚨 Unbestimmte Form!]
#only("1")[#voiceover("Nun wenden wir die Grenzwertgesetze auf unseren ursprünglichen Ausdruck an. Wir haben das Limes von a_n plus b_n, alles geteilt durch a_n.")]
#only("2")[#voiceover("Nach den Grenzwertgesetzen ist dies gleich dem Limes von a_n plus dem Limes von b_n, alles geteilt durch das Limes von a_n.")]
#only("3")[#voiceover("Wir haben zuvor festgestellt, dass die Limes von sowohl a_n als auch b_n 0 sind. Also wird dies zu 0 plus 0, geteilt durch 0.")]
#only("4")[#voiceover("Oh oh! Dies ist die unbestimmte Form 0 durch 0. Wir können dies nicht direkt auswerten. Wir müssen einige algebraische Manipulationen durchführen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Algebraische Manipulation]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) ((1/n) + (2/n^2)) / (1/n)$]
#only("2-")[- $= lim_(n -> infinity) (1 + (2/n)) / 1$]
#only("3-")[- $= lim_(n -> infinity) (1 + (2/n))$]
#only("1")[#voiceover("Setzen wir die ursprünglichen Ausdrücke für a_n und b_n wieder ein. Wir haben das Limes von 1 durch n plus 2 durch n Quadrat, alles geteilt durch 1 durch n.")]
#only("2")[#voiceover("Durch Vereinfachung heben sich die n im Zähler und Nenner auf, sodass wir das Limes von 1 plus 2 durch n, alles geteilt durch 1, erhalten.")]
#only("3")[#voiceover("Die Division durch 1 ändert nichts, also bleibt uns das Limes von 1 plus 2 durch n.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 5: Das Limes auswerten]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (1 + (2/n))$]
#only("2-")[- $= 1 + lim_(n -> infinity) (2/n)$]
#only("3-")[- $= 1 + 0 = 1$ 🎉]
#only("1")[#voiceover("Wir sind fast am Ziel! Wir haben das Limes von 1 plus 2 durch n.")]
#only("2")[#voiceover("Nach den Grenzwertgesetzen ist dies gleich 1 plus das Limes von 2 durch n. Wir haben zuvor festgestellt, dass das Limes von 2 durch n gleich 0 ist.")]
#only("3")[#voiceover("Also ist unsere endgültige Antwort 1 plus 0, was gleich 1 ist. Und da haben wir es! Das Limes von a_n plus b_n, alles geteilt durch a_n, ist 1.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
- $lim_(n -> infinity) (a_n + b_n) / a_n = 1$
#only("1")[#voiceover("Zusammenfassend, obwohl wir zunächst auf eine unbestimmte Form gestoßen sind, konnten wir durch algebraische Manipulation das Limes auswerten. Dies ist eine gängige Technik bei Grenzwertproblemen. Denke immer daran, die Grenzwertgesetze anzuwenden und wo möglich zu vereinfachen. Großartige Arbeit bei der Lösung dieses Problems!")]
]