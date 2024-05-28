#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rechenregeln für stetige Funktionen]
#v(40pt)
Welche der folgenden ist eine Rechenregel für stetige Funktionen?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Summenregel]#only("2-")[#text(fill:green)[a) Summenregel]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) Produktregel]#only("3-")[#text(fill:green)[b) Produktregel]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-3")[c) Quotientenregel]#only("4-")[#text(fill:green)[c) Quotientenregel]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-4")[d) Alle oben genannten]#only("5-")[#text(fill:green)[d) Alle oben genannten]]
#only("1")[#voiceover("Das ist richtig, großartige Arbeit! Alle diese sind tatsächlich Rechenregeln für stetige Funktionen.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summenregel]
#v(40pt)
#only("1-")[Wenn $f$ und $g$ stetig bei $c$ sind, dann ist $f + g$ stetig bei $c$ und]
#v(20pt)
#only("2-")[$(f + g)(c) = f(c) + g(c)$]
#v(40pt)
#only("1")[#voiceover("Zuerst betrachten wir die Summenregel. Wenn f und g stetige Funktionen an einem Punkt c sind, dann ist ihre Summe, f plus g, ebenfalls stetig bei c.")]
#only("2")[#voiceover("Außerdem ist der Wert der Summe bei c gleich der Summe der einzelnen Funktionswerte bei c.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Produktregel]
#v(40pt)
#only("1-")[Wenn $f$ und $g$ stetig bei $c$ sind, dann ist $fg$ stetig bei $c$ und]
#v(20pt)
#only("2-")[$(fg)(c) = f(c)g(c)$]
#v(40pt)
#only("1")[#voiceover("Ähnlich besagt die Produktregel, dass wenn f und g stetig bei c sind, dann ist ihr Produkt, f mal g, ebenfalls stetig bei c.")]
#only("2")[#voiceover("Und der Wert des Produkts bei c ist gleich dem Produkt der einzelnen Funktionswerte bei c.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Quotientenregel]
#v(40pt)
#only("1-")[Wenn $f$ und $g$ stetig bei $c$ sind und $g(c) != 0$, dann ist $f/g$ stetig bei $c$ und]
#v(20pt)
#only("2-")[$f/g(c) = f(c)/g(c)$]
#v(40pt)
#only("1")[#voiceover("Schließlich die Quotientenregel. Wenn f und g stetig bei c sind und g von c nicht gleich null ist, dann ist ihr Quotient, f geteilt durch g, ebenfalls stetig bei c.")]
#only("2")[#voiceover("In diesem Fall ist der Wert des Quotienten bei c gleich dem Quotienten der einzelnen Funktionswerte bei c.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Sei $f(x) = x^2$ und $g(x) = sin(x)$. Beide sind überall stetig.]
#v(20pt)
#only("2-")[Dann sind $f + g$, $fg$ und $f/g$ (wo $g != 0$) ebenfalls stetige Funktionen.]
#v(40pt)
#only("1")[#voiceover("Betrachten wir ein Beispiel. Angenommen, f von x ist gleich x Quadrat und g von x ist gleich Sinus von x. Wir wissen, dass beide Funktionen überall stetig sind.")]
#only("2")[#voiceover("Dann sind nach den gerade besprochenen Regeln die Summe von f und g, das Produkt von f und g und der Quotient von f und g (solange g nicht null ist) ebenfalls stetige Funktionen.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Summe, Produkt und Quotient stetiger Funktionen sind stetig 🧮]
#v(20pt)
#only("2-")[- Der Wert an einem Punkt ist die Summe, das Produkt oder der Quotient der Werte 📍]
#v(20pt)
#only("3-")[- Wichtige Werkzeuge zur Analyse und Konstruktion stetiger Funktionen 🔑]
#only("1")[#voiceover("Zusammenfassend sind die Summe, das Produkt und der Quotient stetiger Funktionen ebenfalls stetig.")]
#only("2")[#voiceover("Der Wert der resultierenden Funktion an einem Punkt ist die Summe, das Produkt oder der Quotient der Werte der einzelnen Funktionen an diesem Punkt.")]
#only("3")[#voiceover("Diese Regeln sind ein wichtiges Werkzeug zur Analyse und Konstruktion stetiger Funktionen.")]
]