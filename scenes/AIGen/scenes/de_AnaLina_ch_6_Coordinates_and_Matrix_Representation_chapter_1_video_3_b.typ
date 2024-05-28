#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
#only("1-")[Das ist die richtige Antwort! Die Koordinaten von $v = mat(2; 3)$ relativ zur Basis $B = (mat(1; 0), mat(0; 1))$ sind tatsächlich $(2, 3)$. 👏]
#only("1")[
#voiceover("Leider nicht ganz richtig. Die Koordinaten des Vektors v gleich 2; 3 relativ zur Basis B gleich 1; 0 und 0; 1 sind tatsächlich 2, 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Gegeben:]
#v(20pt)
#only("1-")[- Basis $B = (mat(1; 0), mat(0; 1))$]
#v(20pt) 
#only("1-")[- Vektor $v = mat(2; 3)$]
#only("1")[
#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben eine Basis B, die aus den Vektoren mat(1; 0) und mat(0; 1) besteht, und einen Vektor v gleich mat(2; 3).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Verstehe die Basis]
#v(40pt)
#only("1-")[Die Basisvektoren in $B$ sind:]
#v(20pt)
#only("1-")[- $mat(1; 0)$ (zeigt entlang der x-Achse)]
#v(20pt)
#only("1-")[- $mat(0; 1)$ (zeigt entlang der y-Achse)]
#only("1")[
#voiceover("Zuerst, lass uns verstehen, was die Basisvektoren in B darstellen. Der Vektor 1; 0 zeigt entlang der x-Achse, und der Vektor 0; 1 zeigt entlang der y-Achse.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Drücke $v$ als Linearkombination aus]
#v(40pt)
#only("1-")[Wir können $v$ als Linearkombination der Basisvektoren schreiben:]
#v(20pt)
#only("1-")[$v = a mat(1; 0) + b mat(0; 1)$]
#v(20pt)
#only("2-")[$mat(2; 3) = a mat(1; 0) + b mat(0; 1)$]
#only("1")[
#voiceover("Als nächstes drücken wir den Vektor v als Linearkombination der Basisvektoren aus. Das bedeutet, wir schreiben v gleich a mal 1; 0 plus b mal 0; 1, wobei a und b Skalare sind, die wir finden müssen.")
]
#only("2")[
#voiceover("Indem wir die Werte einsetzen, erhalten wir 2; 3 gleich a mal 1; 0 plus b mal 0; 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Löse für $a$ und $b$]
#v(40pt)
#only("1-")[Entsprechende Komponenten gleichsetzen:]
#v(20pt)
#only("1-")[- $2 = a · 1 + b · 0 ⇒ a = 2$]
#v(20pt)
#only("1-")[- $3 = a · 0 + b · 1 ⇒ b = 3$]
#only("1")[
#voiceover("Um a und b zu finden, setzen wir die entsprechenden Komponenten gleich. Aus der ersten Komponente erhalten wir 2 gleich a mal 1 plus b mal 0, was bedeutet, dass a gleich 2 ist. Aus der zweiten Komponente erhalten wir 3 gleich a mal 0 plus b mal 1, was bedeutet, dass b gleich 3 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Daher...]
#v(40pt)
#only("1-")[Die Koordinaten von $v = mat(2; 3)$ relativ zur Basis $B = (mat(1; 0), mat(0; 1))$ sind $(2, 3)$. 🌟]
#only("1")[
#voiceover("Daher sind die Koordinaten des Vektors v gleich 2; 3 relativ zur Basis B gleich 1; 0 und 0; 1 2, 3. Großartige Arbeit!")
]
]