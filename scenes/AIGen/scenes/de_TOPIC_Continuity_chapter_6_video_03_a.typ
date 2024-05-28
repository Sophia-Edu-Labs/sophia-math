#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzen von Summen]
#v(40pt)
#only("1-")[- Gegeben: $f(x) = x^2$ und $g(x) = 2x$]
#v(20pt)
#only("2-")[- Ziel: Finde $lim_(x -> 2) (f(x) + g(x))$]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Wir haben zwei Funktionen gegeben: f von x ist gleich x Quadrat und g von x ist gleich 2x.")
]
#only("2")[
#voiceover("Unser Ziel ist es, den Grenzwert zu finden, wenn sich x 2 nähert, von der Summe dieser Funktionen, f von x plus g von x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Grenzwertgesetze]
#v(40pt)
#only("1-")[- Grenzwert einer Summe = Summe der Grenzwerte 🧮]
#v(20pt)
#only("2-")[- $lim_(x -> 2) (f(x) + g(x)) = lim_(x -> 2) f(x) + lim_(x -> 2) g(x)$]
#only("1")[
#voiceover("Der erste Schritt ist, sich an die Grenzwertgesetze zu erinnern. Der Grenzwert einer Summe ist gleich der Summe der Grenzwerte.")
]
#only("2")[
#voiceover("Daher können wir unser Problem umschreiben als den Grenzwert, wenn sich x 2 nähert, von f von x plus den Grenzwert, wenn sich x 2 nähert, von g von x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Grenzwerte berechnen]
#v(40pt)
#only("1-")[- $lim_(x -> 2) f(x) = lim_(x -> 2) x^2 = 2^2 = 4$]
#v(20pt)
#only("2-")[- $lim_(x -> 2) g(x) = lim_(x -> 2) 2x = 2 * 2 = 4$]
#only("1")[
#voiceover("Als nächstes berechnen wir jeden Grenzwert separat. Der Grenzwert, wenn sich x 2 nähert, von f von x ist der Grenzwert, wenn sich x 2 nähert, von x Quadrat, was gleich 2 Quadrat oder 4 ist.")
]
#only("2")[
#voiceover("Ähnlich ist der Grenzwert, wenn sich x 2 nähert, von g von x der Grenzwert, wenn sich x 2 nähert, von 2x, was gleich 2 mal 2 oder 4 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Grenzwerte addieren]
#v(40pt)
#only("1-")[- $lim_(x -> 2) (f(x) + g(x)) = lim_(x -> 2) f(x) + lim_(x -> 2) g(x)$]
#v(20pt)
#only("2-")[- $= 4 + 4 = 8$ ✅]
#only("1")[
#voiceover("Schließlich addieren wir die Grenzwerte. Der Grenzwert, wenn sich x 2 nähert, von f von x plus g von x ist gleich der Grenzwert, wenn sich x 2 nähert, von f von x plus der Grenzwert, wenn sich x 2 nähert, von g von x.")
]
#only("2")[
#voiceover("Das ergibt 4 plus 4, was 8 ist. Und das ist unsere endgültige Antwort!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Grenzwert einer Summe = Summe der Grenzwerte 🧮]
#v(20pt)
#only("2-")[- Grenzwerte separat berechnen 📊]
#v(20pt)
#only("3-")[- Grenzwerte addieren, um die endgültige Antwort zu erhalten ➕]
#only("1")[
#voiceover("Zusammenfassend können wir beim Finden des Grenzwerts einer Summe das Grenzwertgesetz verwenden, das besagt, dass der Grenzwert einer Summe gleich der Summe der Grenzwerte ist.")
]
#only("2")[
#voiceover("Wir berechnen jeden Grenzwert separat.")
]
#only("3")[
#voiceover("Und dann addieren wir die Grenzwerte, um unsere endgültige Antwort zu erhalten.")
]
]