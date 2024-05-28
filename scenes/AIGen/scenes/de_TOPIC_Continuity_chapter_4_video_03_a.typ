#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Großartige Arbeit! Deine Antwort ist absolut korrekt. Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Stetigkeit von $f(x) = 1/x$]

#v(40pt)

#only("2-")[#text()[$ f(x) = 1/x $]]
// Die Funktion f(x) wird ab Folie 2 gezeigt

#only("2")[
#voiceover("Wir betrachten die Funktion f von x gleich eins durch x.")
]

]

#slide()[

#only("1")[
#voiceover("Um die Stetigkeit an einem Punkt zu überprüfen, müssen wir zwei Bedingungen überprüfen:")
]

#text(size: 30pt, weight: "bold")[Bedingungen für Stetigkeit]

#v(40pt)

#only("1-")[1. $lim_(x→1) f(x)$ existiert]
// Die erste Bedingung für Stetigkeit wird ab Folie 1 gezeigt

#only("2-")[2. $lim_(x→1) f(x) = f(1)$]
// Die zweite Bedingung für Stetigkeit wird ab Folie 2 gezeigt

#only("2")[
#voiceover("Erstens muss der Grenzwert von f von x, wenn x sich eins nähert, existieren. Zweitens muss dieser Grenzwert gleich dem Funktionswert an der Stelle eins sein.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Überprüfung der Bedingung 1]

#v(40pt)

#only("1-")[$ lim_(x→1) f(x) = lim_(x→1) 1/x $]
// Der Grenzwert wird ab Folie 1 gezeigt

#v(10pt)

#only("2-")[$ = 1/1 = 1 $]
// Die Berechnung des Grenzwerts wird ab Folie 2 gezeigt

#only("1")[#voiceover("Beginnen wir mit der ersten Bedingung. Wir müssen den Grenzwert von eins durch x finden, wenn x sich eins nähert.")]

#only("2")[#voiceover("Wenn x sich eins nähert, nähert sich der Nenner eins. Der Grenzwert ist also eins durch eins, was eins ergibt.")]

#only("3")[#voiceover("Daher existiert der Grenzwert und ist gleich eins. ✅")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Überprüfung der Bedingung 2]

#v(40pt)

#only("1-")[$ f(1) = 1/1 = 1 $]
// Der Funktionswert an der Stelle 1 wird ab Folie 1 gezeigt

#v(10pt)

#only("2-")[$ lim_(x→1) f(x) = 1 $]
// Der Grenzwert von der vorherigen Folie wird ab Folie 2 wiederholt

#v(10pt)

#only("3-")[$ ∴ lim_(x→1) f(x) = f(1) $]
// Die Schlussfolgerung, dass der Grenzwert dem Funktionswert entspricht, wird ab Folie 3 gezeigt

#only("1")[#voiceover("Nun überprüfen wir die zweite Bedingung. Wir müssen die Funktion an der Stelle x gleich eins auswerten.")]

#only("2")[#voiceover("f von eins ist gleich eins durch eins, was eins ergibt. Dies ist derselbe Wert wie der zuvor berechnete Grenzwert.")]

#only("3")[#voiceover("Daher ist der Grenzwert, wenn x sich eins nähert, gleich dem Funktionswert an der Stelle eins. Die zweite Bedingung ist ebenfalls erfüllt. ✅")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Schlussfolgerung]

#v(40pt)

#only("1-")[Beide Bedingungen sind erfüllt:]

#v(20pt)

#only("2-")[1. $lim_(x→1) f(x)$ existiert und ist gleich 1]

#v(10pt)

#only("3-")[2. $lim_(x→1) f(x) = f(1) = 1$]

#v(20pt)

#only("4-")[Daher ist $f(x) = 1/x$ stetig an $x = 1$. 🌟]

#only("1")[#voiceover("Zusammenfassend haben wir beide Bedingungen für die Stetigkeit überprüft.")]

#only("2")[#voiceover("Der Grenzwert von f von x, wenn x sich eins nähert, existiert und ist gleich eins.")]

#only("3")[#voiceover("Dieser Grenzwert ist gleich dem Funktionswert an der Stelle eins.")]

#only("4")[#voiceover("Da beide Bedingungen erfüllt sind, können wir schließen, dass die Funktion f von x gleich eins durch x tatsächlich stetig an der Stelle x gleich eins ist. Großartige Arbeit bei der Lösung dieses Problems!")]

]