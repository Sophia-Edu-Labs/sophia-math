#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum f von x gleich zwei durch x die richtige Antwort ist.")
]

#text(size: 30pt, weight: "bold")[Potenzfunktion mit negativem Exponenten]

#v(40pt)

#only("2-")[#text()[$ f(x) = 2/x $]]

#only("2")[
#voiceover("Wir betrachten die Funktion f von x gleich zwei geteilt durch x. Dies ist tatsächlich eine Potenzfunktion mit einem negativen Exponenten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Allgemeine Form von Potenzfunktionen]

#v(40pt)

#only("1-")[$ f(x) = a x^b $]
#v(20pt)
#only("2-")[Wo:
- $a$ ist eine Konstante (Koeffizient)
- $b$ ist der Exponent]

#only("1")[
#voiceover("Erinnern wir uns an die allgemeine Form einer Potenzfunktion. Sie lautet f von x gleich a mal x hoch b,")
]

#only("2")[
#voiceover("wobei a eine Konstante ist, oft als Koeffizient bezeichnet, und b der Exponent ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Unsere Funktion umschreiben]

#v(40pt)

#only("1-")[$ f(x) = 2/x $]
#v(20pt)
#only("2-")[$ f(x) = 2 x^(-1) $]

#only("1")[
#voiceover("Schauen wir uns nun unsere Funktion an: f von x gleich zwei geteilt durch x.")
]

#only("2")[
#voiceover("Wir können dies umschreiben als f von x gleich zwei mal x hoch minus eins. Das liegt daran, dass das Teilen durch x dasselbe ist wie das Multiplizieren mit x hoch minus eins.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Komponenten identifizieren]

#v(40pt)

#only("1-")[In $ f(x) = 2 x^(-1) $:]
#v(20pt)
#only("2-")[- $a = 2$ (Koeffizient)]
#v(20pt)
#only("3-")[- $b = -1$ (Exponent)]

#only("1")[
#voiceover("Lass uns die Komponenten unserer Funktion identifizieren.")
]

#only("2")[
#voiceover("Der Koeffizient a ist 2,")
]

#only("3")[
#voiceover("und der Exponent b ist minus eins.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Den Punkt (1, 2) überprüfen]

#v(40pt)

#only("1-")[Gegebener Punkt: $(1, 2)$]
#v(20pt)
#only("2-")[$ f(1) = 2/1 = 2 $]
#v(20pt)
#only("3-")[✅ Verläuft durch (1, 2)]

#only("1")[
#voiceover("Nun, lass uns überprüfen, ob diese Funktion durch den Punkt eins Komma zwei verläuft.")
]

#only("2")[
#voiceover("Wenn wir x gleich 1 in unsere Funktion einsetzen, erhalten wir f von 1 gleich 2 geteilt durch 1, was 2 ergibt.")
]

#only("3")[
#voiceover("Dies bestätigt, dass unsere Funktion tatsächlich durch den Punkt eins Komma zwei verläuft.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Potenzfunktion: $ f(x) = 2/x $ oder $ 2x^(-1) $]
#v(20pt)
#only("2-")[- Koeffizient $a = 2$]
#v(20pt)
#only("3-")[- Negativer Exponent $b = -1$]
#v(20pt)
#only("4-")[- Verläuft durch (1, 2) ✅]

#only("1")[
#voiceover("Zusammenfassend haben wir eine Potenzfunktion f von x gleich zwei geteilt durch x gefunden, die auch als zwei mal x hoch minus eins geschrieben werden kann.")
]

#only("2")[
#voiceover("Sie hat einen Koeffizienten von 2,")
]

#only("3")[
#voiceover("einen negativen Exponenten von minus eins,")
]

#only("4")[
#voiceover("und sie verläuft durch den Punkt eins Komma zwei. Gut gemacht beim Lösen dieses Problems!")
]
]