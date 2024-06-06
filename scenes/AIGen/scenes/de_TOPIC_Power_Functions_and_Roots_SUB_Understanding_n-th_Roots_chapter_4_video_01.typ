#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationalisierung von n-ten Wurzeln]
#v(40pt)
#only("1-")[- Ziel: Wurzeln im Nenner eliminieren 🎯]
#v(20pt)
#only("2-")[- Methode: Mit geeignetem Wert multiplizieren 🧮]
#only("1")[
#voiceover("Wenn wir eine n-te Wurzel im Nenner eines Bruchs haben, möchten wir diese oft rationalisieren. Das bedeutet, dass wir die Wurzel aus dem Nenner entfernen wollen.")
]
#only("2")[
#voiceover("Dazu multiplizieren wir sowohl den Zähler als auch den Nenner mit einem geeigneten Wert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $1/root(3,2)$]
#v(40pt)
#only("1-")[- Multipliziere mit $root(3,2)/root(3,2)$]
#v(20pt)
#only("2-")[$ (1 dot root(3,2))/(root(3,2) dot root(3,2)) $]
#v(20pt)
#only("3-")[$ = root(3,2)/2 $]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Angenommen, wir haben den Bruch 1 über der Kubikwurzel von 2.")
]
#only("2")[
#voiceover("Wir multiplizieren sowohl den Zähler als auch den Nenner mit der Kubikwurzel von 2 über der Kubikwurzel von 2. Das ist gleichbedeutend mit der Multiplikation mit 1, sodass sich der Wert des Bruchs nicht ändert.")
]
#only("3")[
#voiceover("Im Nenner ergibt die Kubikwurzel von 2 multipliziert mit der Kubikwurzel von 2 gleich 2. Unsere endgültige rationalisierte Form ist also die Kubikwurzel von 2 über 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Allgemeine Regel]
#v(40pt)
#only("1-")[$ 1/root(n,a) = (root(n,a)^(n-1))/a $]
#v(20pt)
#only("2-")[- Multipliziere mit $root(n,a)^(n-1)/root(n,a)^(n-1)$]
#only("1")[
#voiceover("Im Allgemeinen, um 1 über der n-ten Wurzel von a zu rationalisieren, multiplizieren wir mit der n-ten Wurzel von a hoch n minus 1, über der n-ten Wurzel von a hoch n minus 1.")
]
#only("2")[
#voiceover("Dies funktioniert, weil im Nenner die n-te Wurzel von a multipliziert mit der n-ten Wurzel von a hoch n minus 1 gleich a ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Rationalisierung eliminiert Wurzeln im Nenner 🚫√]
#v(20pt)
#only("2-")[- Multipliziere Zähler und Nenner mit geeignetem Wert 🔢]
#v(20pt)
#only("3-")[- Für $1/root(n,a)$, multipliziere mit $root(n,a)^(n-1)/root(n,a)^(n-1)$ 📏]
#only("1")[
#voiceover("Zusammenfassend ist die Rationalisierung eine Technik, um Wurzeln im Nenner eines Bruchs zu eliminieren.")
]
#only("2")[
#voiceover("Wir tun dies, indem wir sowohl den Zähler als auch den Nenner mit einem geeigneten Wert multiplizieren.")
]
#only("3")[
#voiceover("Insbesondere bei einem Bruch der Form 1 über der n-ten Wurzel von a multiplizieren wir mit der n-ten Wurzel von a hoch n minus 1, über der n-ten Wurzel von a hoch n minus 1.")
]
]