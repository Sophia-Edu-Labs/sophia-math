#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[Die richtige Antwort ist:]
#v(20pt)
#only("2-")[#text(fill:green)[b) Spalten]]
#v(40pt)
#only("3-")[Lass uns sehen, warum...]
#only("1")[#voiceover("Nicht ganz, aber keine Sorge. Hier ist die richtige Lösung.")]
#only("2")[#voiceover("Die Basiswechselmatrix wird tatsächlich durch die neuen Basisvektoren als Spalten gebildet.")]
#only("3")[#voiceover("Nun, lass uns in die Erklärung eintauchen, um dies besser zu verstehen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Basiswechselmatrix]
#v(40pt)
#only("1-")[- Transformiert Koordinaten von einer Basis in eine andere]
#v(20pt)
#only("2-")[- Neue Basisvektoren werden zu den Spalten]
#v(40pt)
#only("3-")[Beispiel: Basis $B = \{mat(1;1), mat(1;-1)\}$]
#v(20pt)
#only("4-")[Basiswechselmatrix: $P_B = mat(1, 1; 1, -1)$]
#only("1")[#voiceover("Die Basiswechselmatrix wird verwendet, um Koordinaten von einer Basis in eine andere zu transformieren.")]
#only("2")[#voiceover("Beim Erstellen dieser Matrix werden die neuen Basisvektoren zu den Spalten der Matrix.")]
#only("3")[#voiceover("Zum Beispiel, nehmen wir an, wir haben eine neue Basis B, die aus den Vektoren (1; 1) und (1; -1) besteht.")]
#only("4")[#voiceover("Die Basiswechselmatrix, bezeichnet als P sub B, wäre dann die Matrix mit diesen Vektoren als ihre Spalten.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Warum Spalten? 🤔]
#v(40pt)
#only("1-")[- Matrix-Vektor-Multiplikation]
#v(20pt)
#only("2-")[- Spalten werden mit Skalaren multipliziert und addiert]
#v(40pt)
#only("3-")[Beispiel: $P_B mat(x; y) = x mat(1; 1) + y mat(1; -1)$]
#v(20pt)
#only("4-")[- Drückt Vektor als Linearkombination der Basisvektoren aus]
#only("1")[#voiceover("Der Grund, warum wir Spalten verwenden, liegt in der Funktionsweise der Matrix-Vektor-Multiplikation.")]
#only("2")[#voiceover("Wenn eine Matrix mit einem Vektor multipliziert wird, wird jede Spalte der Matrix mit dem entsprechenden Skalar im Vektor multipliziert und die Ergebnisse werden addiert.")]
#only("3")[#voiceover("In unserem Beispiel würde die Multiplikation von P sub B mit einem Vektor (x; y) x mal den ersten Spaltenvektor plus y mal den zweiten Spaltenvektor ergeben.")]
#only("4")[#voiceover("Dies drückt den Vektor als Linearkombination der neuen Basisvektoren aus, was genau das ist, was wir beim Basiswechsel wollen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Basiswechselmatrix transformiert Koordinaten 🔄]
#v(20pt)
#only("2-")[- Neue Basisvektoren bilden die Spalten 📏]
#v(20pt)
#only("3-")[- Matrix-Vektor-Multiplikation drückt Linearkombination aus 🧮]
#v(40pt)
#only("4-")[Großartige Arbeit beim Verständnis dieses Konzepts! 👏]
#only("1")[#voiceover("Zusammenfassend: Die Basiswechselmatrix transformiert Koordinaten von einer Basis in eine andere.")]
#only("2")[#voiceover("Die neuen Basisvektoren bilden die Spalten dieser Matrix.")]
#only("3")[#voiceover("Und die Matrix-Vektor-Multiplikation mit der Basiswechselmatrix drückt einen Vektor als Linearkombination der neuen Basisvektoren aus.")]
#only("4")[#voiceover("Fantastische Arbeit beim Verständnis dieses wichtigen Konzepts! Mach weiter so.")]
]