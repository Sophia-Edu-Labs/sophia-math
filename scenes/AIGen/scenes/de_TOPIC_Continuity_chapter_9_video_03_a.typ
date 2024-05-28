#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeit]
#v(40pt)
#only("1-")[- Gegeben: $f(x) = x^3 - 3x + 2$]
#only("2-")[- Überprüfe die Stetigkeit bei $x = 1$]
#only("1")[
#voiceover("Großartig! Du hast korrekt festgestellt, dass die Funktion f von x gleich x hoch drei minus 3x plus 2 bei x gleich 1 stetig ist. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
#only("2")[
#voiceover("Um die Stetigkeit bei x gleich 1 zu überprüfen, müssen wir zwei Bedingungen erfüllen: Die Funktion muss bei x gleich 1 definiert sein, und der Grenzwert der Funktion, wenn sich x 1 nähert, muss dem Funktionswert bei x gleich 1 entsprechen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Funktionswert]
#v(40pt)
#only("1-")[$ f(1) = 1^3 - 3 · 1 + 2 $]
#v(10pt)
#only("2-")[$ f(1) = 1 - 3 + 2 $]
#v(10pt)
#only("3-")[$ f(1) = 0 $]
#only("1")[
#voiceover("Zuerst berechnen wir den Funktionswert bei x gleich 1. Wir setzen 1 für x in die Funktion ein.")
]
#only("2")[
#voiceover("Durch Vereinfachen erhalten wir 1 minus 3 plus 2.")
]
#only("3")[
#voiceover("Das vereinfacht sich zu 0. Die Funktion ist also bei x gleich 1 definiert, und ihr Wert ist 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert]
#v(40pt)
#only("1-")[$ lim_(x->1) f(x) = lim_(x->1) (x^3 - 3x + 2) $]
#v(10pt)
#only("2-")[$ lim_(x->1) f(x) = 1^3 - 3 · 1 + 2 $]
#v(10pt)
#only("3-")[$ lim_(x->1) f(x) = 1 - 3 + 2 $]
#v(10pt)
#only("4-")[$ lim_(x->1) f(x) = 0 $]
#only("1")[
#voiceover("Als nächstes berechnen wir den Grenzwert der Funktion, wenn sich x 1 nähert. Der Grenzwert einer Polynomfunktion an einem Punkt ist einfach der Funktionswert an diesem Punkt.")
]
#only("2")[
#voiceover("Wir können also direkt 1 für x in die Funktion einsetzen.")
]
#only("3")[
#voiceover("Durch Vereinfachen erhalten wir 1 minus 3 plus 2.")
]
#only("4")[
#voiceover("Das vereinfacht sich zu 0. Der Grenzwert der Funktion, wenn sich x 1 nähert, ist also ebenfalls 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeitsprüfung]
#v(40pt)
#only("1-")[- Funktionswert bei $x = 1$: $f(1) = 0$ ✅]
#v(20pt)
#only("2-")[- Grenzwert, wenn $x -> 1$: $lim_(x->1) f(x) = 0$ ✅]
#v(20pt)
#only("3-")[- $f(1) = lim_(x->1) f(x)$ ✅]
#v(20pt)
#only("4-")[Daher ist $f(x)$ stetig bei $x = 1$ 🎉]
#only("1")[
#voiceover("Wir haben festgestellt, dass der Funktionswert bei x gleich 1 gleich 0 ist.")
]
#only("2")[
#voiceover("Und der Grenzwert der Funktion, wenn sich x 1 nähert, ist ebenfalls 0.")
]
#only("3")[
#voiceover("Da der Funktionswert und der Grenzwert gleich sind, sind die beiden Bedingungen für die Stetigkeit erfüllt.")
]
#only("4")[
#voiceover("Daher können wir schließen, dass die Funktion f von x gleich x hoch drei minus 3x plus 2 tatsächlich bei x gleich 1 stetig ist. Großartige Arbeit!")
]
]