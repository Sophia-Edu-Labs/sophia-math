#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
Das ist die richtige Antwort! Lass uns Schritt für Schritt sehen, wie wir das lösen können.
#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns Schritt für Schritt sehen, wie wir das lösen können.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[- Basis $B = (mat(1; 1), mat(1; -1))$]
#v(20pt)
#only("2-")[- Vektor $v = mat(2; 0)$]
#only("1")[
#voiceover("Wir haben eine Basis B, die aus den Vektoren eins, eins und eins, minus eins besteht.")
]
#only("2")[
#voiceover("Wir haben auch einen Vektor v, der gleich zwei, null ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Schreibe $v$ als Linearkombination]
#v(40pt)
#only("1-")[- $v = a mat(1; 1) + b mat(1; -1)$]
#v(20pt)
#only("2-")[- $mat(2; 0) = a mat(1; 1) + b mat(1; -1)$]
#only("1")[
#voiceover("Zuerst schreiben wir den Vektor v als Linearkombination der Basisvektoren. Wir führen zwei unbekannte Koeffizienten a und b ein.")
]
#only("2")[
#voiceover("Also ist zwei, null gleich a mal eins, eins plus b mal eins, minus eins.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Löse das Gleichungssystem]
#v(40pt)
#only("1-")[
- $2 = a + b$
- $0 = a - b$
]
#v(20pt)
#only("2-")[
- $a = 1$
- $b = 1$
]
#only("1")[
#voiceover("Das ergibt ein System von zwei Gleichungen. Die erste Gleichung ist zwei gleich a plus b, und die zweite Gleichung ist null gleich a minus b.")
]
#only("2")[
#voiceover("Durch Lösen dieses Systems finden wir, dass a gleich eins und b gleich eins ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Schreibe die Koordinaten]
#v(40pt)
#only("1-")[- Die Koordinaten von $v$ relativ zu $B$ sind $(1, 1)$]
#only("1")[
#voiceover("Daher sind die Koordinaten des Vektors v relativ zur Basis B eins, eins.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Schreibe $v$ als Linearkombination der Basisvektoren]
#v(20pt)
#only("2-")[- Löse das resultierende Gleichungssystem]
#v(20pt)
#only("3-")[- Die Lösung gibt die Koordinaten von $v$ relativ zu $B$]
#only("1")[
#voiceover("Zusammenfassend haben wir zuerst den Vektor v als Linearkombination der Basisvektoren geschrieben.")
]
#only("2")[
#voiceover("Das ergab ein Gleichungssystem, das wir gelöst haben.")
]
#only("3")[
#voiceover("Die Lösung dieses Systems gibt uns die Koordinaten des Vektors v relativ zur Basis B.")
]
]