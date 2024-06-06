#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Volumen eines Würfels 📦]
#v(40pt)
#only("1-")[- Gegeben: Volumen = 27 Kubikeinheiten]
#v(20pt)
#only("2-")[- Formel: $V = s^3$, wobei $s$ die Seitenlänge ist]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns Schritt für Schritt sehen, wie wir das richtig lösen können. Wir wissen, dass das Volumen des Würfels 27 Kubikeinheiten beträgt.")
]
#only("2")[
#voiceover("Wir wissen, dass das Volumen eines Würfels durch die Formel V gleich s hoch drei gegeben ist, wobei s die Länge einer Seite des Würfels ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Lösen der Gleichung 🧮]
#v(40pt)
#only("1-")[- Setze das bekannte Volumen ein: $27 = s^3$]
#v(20pt)
#only("2-")[- Ziehe die dritte Wurzel auf beiden Seiten: $root(3)(27) = root(3)(s^3)$]
#v(20pt)
#only("3-")[- Vereinfache: $3 = s$]
#only("1")[
#voiceover("Wir können das bekannte Volumen in die Formel einsetzen. Also, 27 gleich s hoch drei.")
]
#only("2")[
#voiceover("Um s zu lösen, müssen wir die dritte Wurzel auf beiden Seiten der Gleichung ziehen. Die dritte Wurzel von 27 ist gleich der dritten Wurzel von s hoch drei.")
]
#only("3")[
#voiceover("Die dritte Wurzel von 27 ist 3, und die dritte Wurzel von s hoch drei ist einfach s. Daher ist 3 gleich s.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Antwort 🎉]
#v(40pt)
#only("1-")[Die Länge einer Seite des Würfels beträgt 3 Einheiten.]
#only("1")[
#voiceover("Und das ist unsere Antwort! Die Länge einer Seite des Würfels beträgt 3 Einheiten. Hervorragende Arbeit!")
]
]