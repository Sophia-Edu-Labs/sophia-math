#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzeln: Wichtige Punkte 🔑]
#v(40pt)
#only("1-")[- Definition: $root(n, a)$ ist ein Wert, der, wenn er auf die Potenz $n$ erhoben wird, $a$ ergibt]
#v(20pt)
#only("2-")[- Notation: $root(n, a)$ für die n-te Wurzel von $a$]
#v(20pt)
#only("3-")[- Eigenschaften: $root(n, a b) = root(n, a) root(n, b)$, $root(n, a/b) = root(n, a) / root(n, b)$]
#v(20pt)
#only("4-")[- Vereinfachung: Faktorisierung der Zahl unter der Wurzel]
#v(20pt)
#only("5-")[- Gleichungen lösen: Beide Seiten auf die Potenz $n$ erheben]
#only("1")[
#voiceover("Die n-te Wurzel einer Zahl a, bezeichnet als die n-te Wurzel von a, ist ein Wert, der, wenn er auf die Potenz n erhoben wird, a ergibt.")
]
#only("2")[
#voiceover("Wir verwenden die Notation die n-te Wurzel von a, um die n-te Wurzel einer Zahl a darzustellen.")
]
#only("3")[
#voiceover("n-te Wurzeln haben wichtige Eigenschaften. Die n-te Wurzel eines Produkts a b ist gleich dem Produkt der n-ten Wurzeln von a und b. Ebenso ist die n-te Wurzel eines Quotienten a durch b gleich dem Quotienten der n-ten Wurzeln von a und b.")
]
#only("4")[
#voiceover("Um n-te Wurzeln zu vereinfachen, können wir die Zahl unter der Wurzel faktorisieren.")
]
#only("5")[
#voiceover("Beim Lösen von Gleichungen, die n-te Wurzeln enthalten, können wir beide Seiten der Gleichung auf die Potenz n erheben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzeln: Weitere wichtige Punkte 🗝️]
#v(40pt)
#only("1-")[- Reelle n-te Wurzeln: $root(n, a)$ ist reell, wenn $n$ ungerade ist oder wenn $n$ gerade ist und $a ≥ 0$]
#v(20pt)
#only("2-")[- Komplexe n-te Wurzeln: $root(n, -a)$ ist komplex, wenn $n$ gerade ist]
#v(20pt)
#only("3-")[- Anwendungen: Zinssätze 📈, physikalische Probleme 🌍, etc.]
#only("1")[
#voiceover("Die n-te Wurzel einer Zahl a ist reell, wenn n ungerade ist oder wenn n gerade ist und a größer oder gleich null ist.")
]
#only("2")[
#voiceover("Wenn n jedoch gerade ist und a negativ ist, ist die n-te Wurzel von negativ a eine komplexe Zahl.")
]
#only("3")[
#voiceover("n-te Wurzeln haben verschiedene Anwendungen in der realen Welt, wie zum Beispiel bei der Berechnung von Zinssätzen und beim Lösen von physikalischen Problemen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- n-te Wurzel: $root(n, a)$ so dass $(root(n, a))^n = a$]
#v(20pt)
#only("2-")[- Eigenschaften, Vereinfachung, Gleichungen lösen]
#v(20pt)
#only("3-")[- Reelle und komplexe Wurzeln, Anwendungen]
#only("1")[
#voiceover("Zusammenfassend ist die n-te Wurzel einer Zahl a ein Wert, der, wenn er auf die Potenz n erhoben wird, a ergibt.")
]
#only("2")[
#voiceover("Wir haben die Notation, Eigenschaften, Vereinfachung und das Lösen von Gleichungen, die n-te Wurzeln enthalten, besprochen.")
]
#only("3")[
#voiceover("Wir haben auch reelle und komplexe n-te Wurzeln sowie deren Anwendungen in verschiedenen Bereichen behandelt.")
]
]