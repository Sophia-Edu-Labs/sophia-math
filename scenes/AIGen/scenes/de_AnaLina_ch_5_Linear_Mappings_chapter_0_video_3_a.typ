#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[Gegeben ist eine lineare Abbildung $T: R^2 -> R^2$, definiert durch $T(mat(x; y)) = mat(2x; 3y)$, finde $T(mat(1; 2))$.]
#only("1")[
#voiceover("Großartig! Das ist die richtige Lösung. Lass uns die Schritte durchgehen, um diese Übung zu lösen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Die Abbildung verstehen]
#v(40pt)
#only("1-")[- $T(mat(x; y)) = mat(2x; 3y)$ 🗺️]
#v(20pt)
#only("2-")[- Abbildet $mat(x; y)$ auf $mat(2x; 3y)$ ✨]
#only("1")[
#voiceover("Zuerst wollen wir die gegebene lineare Abbildung verstehen. T ist eine Funktion, die einen Vektor (x; y) nimmt und ihn auf den Vektor (2x; 3y) abbildet.")
]
#only("2")[
#voiceover("Mit anderen Worten, sie verdoppelt die erste Komponente und verdreifacht die zweite Komponente des Eingangsvektors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Den Eingang identifizieren]
#v(40pt)
#only("1-")[- Wir müssen $T(mat(1; 2))$ finden 🎯]
#v(20pt)
#only("2-")[- Der Eingangsvektor ist $mat(1; 2)$ 📥]
#only("1")[
#voiceover("Nun müssen wir T des Vektors (1; 2) finden.")
]
#only("2")[
#voiceover("Unser Eingangsvektor ist also (1; 2).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Die Abbildung anwenden]
#v(40pt)
#only("1-")[- $T(mat(1; 2)) = mat(2*1; 3*2)$ 🧮]
#v(20pt)
#only("2-")[- $T(mat(1; 2)) = mat(2; 6)$ 📤]
#only("1")[
#voiceover("Um die Abbildung anzuwenden, ersetzen wir x durch 1 und y durch 2 in der Formel für T. Dies ergibt T von (1; 2) gleich (2 mal 1; 3 mal 2).")
]
#only("2")[
#voiceover("Vereinfacht ergibt sich T von (1; 2) gleich (2; 6).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- $T(mat(1; 2)) = mat(2; 6)$ ✅]
#only("1")[
#voiceover("Daher ergibt T von (1; 2) gleich (2; 6). Gute Arbeit bei der Lösung dieser Übung!")
]
]