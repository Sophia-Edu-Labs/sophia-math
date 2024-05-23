#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Sequenz]
#v(40pt)
#only("-1")[- $a_n = 2n + 1$]
#v(20pt)
#only("2-")[- Finde das 5. Glied]
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Gehen wir die Lösung Schritt für Schritt durch. Wir haben die Sequenz a_n gleich 2n plus 1 gegeben.")
]
#only("2")[
#voiceover("Unsere Aufgabe ist es, das 5. Glied dieser Sequenz zu finden.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Verstehe die Formel]
#v(40pt)
#only("-1")[- $a_n = 2n + 1$]
#v(20pt)
#only("2-")[- $n$ ist die Position des Glieds in der Sequenz]
#only("1")[
#voiceover("Zuerst verstehen wir, was die Formel a_n gleich 2n plus 1 bedeutet.")
]
#only("2")[
#voiceover("In dieser Formel repräsentiert n die Position des Glieds in der Sequenz.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Setze $n=5$ ein]
#v(40pt)
#only("-1")[- $a_5 = 2(5) + 1$]
#v(20pt)
#only("2-")[- Wir wollen das 5. Glied, also $n=5$]
#only("1")[
#voiceover("Wir suchen das 5. Glied. Also setzen wir n gleich 5 in die Formel ein.")
]
#only("2")[
#voiceover("Das gibt uns a_5 gleich 2 mal 5 plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Vereinfache]
#v(40pt)
#only("-1")[- $a_5 = 2(5) + 1$]
#v(20pt)
#only("2-")[- $a_5 = 10 + 1$]
#v(20pt)
#only("3-")[- $a_5 = 11$]
#only("1")[
#voiceover("Nun vereinfachen wir diesen Ausdruck.")
]
#only("2")[
#voiceover("2 mal 5 ergibt 10. Also haben wir a_5 gleich 10 plus 1.")
]
#only("3")[
#voiceover("10 plus 1 ergibt 11. Daher ist das 5. Glied der Sequenz, a_5, gleich 11.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("-1")[- Gegeben: $a_n = 2n + 1$ 📜]
#v(20pt)
#only("2-")[- Aufgabe: Finde $a_5$ 🎯]
#v(20pt)
#only("3-")[- Lösung: $a_5 = 2(5) + 1 = 10 + 1 = 11$ ✅]
#only("1")[
#voiceover("Zusammenfassend hatten wir die Sequenz a_n gleich 2n plus 1 gegeben.")
]
#only("2")[
#voiceover("Unsere Aufgabe war es, das 5. Glied, a_5, zu finden.")
]
#only("3")[
#voiceover("Wir haben dies gelöst, indem wir n gleich 5 in die Formel eingesetzt haben, was uns a_5 gleich 2 mal 5 plus 1 gab. Durch Vereinfachung fanden wir heraus, dass a_5 gleich 11 ist.")
]
]