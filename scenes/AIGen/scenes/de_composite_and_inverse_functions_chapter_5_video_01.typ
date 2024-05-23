#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Inverse Funktionen]
#v(40pt)
#only("1-")[- Funktionen, die sich gegenseitig "aufheben" 🔄]
#v(20pt)
#only("2-")[- Beispiel: $f(x) = 2x + 1$ und $g(x) = (x - 1) / 2$]
#only("1")[
#voiceover("Inverse Funktionen sind Funktionen, die sich gegenseitig aufheben. Wenn man eine Funktion und dann ihr Inverses anwendet, kommt man wieder zum Ausgangspunkt zurück.")
]
#only("2")[
#voiceover("Zum Beispiel, betrachten wir die Funktion $f(x) = 2x + 1$ und ihr Inverses $g(x) = (x - 1) / 2$.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Komposition von Funktionen]
#v(40pt)
#only("1-")[- Eine Funktion auf das Ergebnis einer anderen anwenden 🎨]
#v(20pt)
#only("2-")[- Bezeichnet als $(f ∘ g)(x)$ oder $f(g(x))$]
#v(20pt)
#only("3-")[- Beispiel: $(f ∘ g)(x) = f(g(x)) = 2((x - 1) / 2) + 1 = x$]
#only("1")[
#voiceover("Die Komposition von Funktionen bedeutet, eine Funktion auf das Ergebnis einer anderen anzuwenden.")
]
#only("2")[
#voiceover("Es wird als $f$ komponiert mit $g$, oder $f$ von $g$ von $x$ bezeichnet.")
]
#only("3")[
#voiceover("In unserem Beispiel ergibt $f$ komponiert mit $g$ $f$ von $g$ von $x$, was sich einfach zu $x$ vereinfacht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Identitätsfunktion]
#v(40pt)
#only("1-")[- Funktion, die ihren Eingabewert unverändert lässt 🆔]
#v(20pt)
#only("2-")[- Bezeichnet als $I(x) = x$]
#v(20pt)
#only("3-")[- Eigenschaft: $(f ∘ f^(-1))(x) = (f^(-1) ∘ f)(x) = I(x) = x$]
#only("1")[
#voiceover("Die Identitätsfunktion ist eine Funktion, die ihren Eingabewert unverändert lässt.")
]
#only("2")[
#voiceover("Sie wird als $I$ von $x$ gleich $x$ bezeichnet.")
]
#only("3")[
#voiceover("Eine wichtige Eigenschaft von inversen Funktionen ist, dass wenn man eine Funktion mit ihrem Inversen komponiert, in beiden Reihenfolgen, man die Identitätsfunktion erhält.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Überprüfung von inversen Funktionen]
#v(40pt)
#only("1-")[- Die Funktionen in beiden Reihenfolgen komponieren]
#v(20pt)
#only("2-")[- Überprüfen, ob das Ergebnis die Identitätsfunktion ist]
#v(20pt)
#only("3-")[- Beispiel: $(g ∘ f)(x) = g(f(x)) = ((2x + 1) - 1) / 2 = x$]
#only("1")[
#voiceover("Um zu überprüfen, ob zwei Funktionen invers zueinander sind, komponiert man sie in beiden Reihenfolgen.")
]
#only("2")[
#voiceover("Wenn das Ergebnis beider Kompositionen die Identitätsfunktion ist, dann sind die Funktionen tatsächlich invers zueinander.")
]
#only("3")[
#voiceover("In unserem Beispiel ergibt $g$ komponiert mit $f$ ebenfalls die Identitätsfunktion, was bestätigt, dass $f$ und $g$ invers zueinander sind.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Inverse Funktionen heben sich gegenseitig auf 🔄]
#v(20pt)
#only("2-")[- Komposition bedeutet, eine Funktion auf das Ergebnis einer anderen anzuwenden 🎨]
#v(20pt)
#only("3-")[- Eine Funktion mit ihrem Inversen zu komponieren ergibt die Identitätsfunktion 🆔]
#only("1")[
#voiceover("Zusammenfassend heben inverse Funktionen sich gegenseitig auf.")
]
#only("2")[
#voiceover("Die Komposition von Funktionen bedeutet, eine Funktion auf das Ergebnis einer anderen anzuwenden.")
]
#only("3")[
#voiceover("Und wenn man eine Funktion mit ihrem Inversen komponiert, in beiden Reihenfolgen, erhält man die Identitätsfunktion. Dies ist eine wichtige Eigenschaft, die uns hilft zu überprüfen, ob zwei Funktionen tatsächlich invers zueinander sind.")
]
]