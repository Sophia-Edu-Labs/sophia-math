#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Volumen eines Würfels 🧊]
#v(40pt)
#only("1-")[- Gegeben: $V = s^3$]
#v(20pt)
#only("2-")[- Finde: $s$, wenn $V = 27$]
#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
#only("2")[
#voiceover("Es ist gegeben, dass das Volumen eines Würfels gleich s hoch drei ist, wobei s die Seitenlänge ist. Wir müssen die Seitenlänge finden, wenn das Volumen 27 Kubikeinheiten beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Einsetzen 📝]
#v(40pt)
#only("1-")[- $V = s^3$]
#v(20pt)
#only("2-")[- $27 = s^3$]
#only("1")[
#voiceover("Zuerst setzen wir das gegebene Volumen in die Formel ein.")
]
#only("2")[
#voiceover("Wir ersetzen V durch 27, also haben wir 27 gleich s hoch drei.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Löse für $s$ 🧮]
#v(40pt)
#only("1-")[- $27 = s^3$]
#v(20pt)
#only("2-")[- $s = root(3, 27)$]
#v(20pt)
#only("3-")[- $s = 3$]
#only("1")[
#voiceover("Jetzt müssen wir diese Gleichung nach s auflösen.")
]
#only("2")[
#voiceover("Dazu ziehen wir die dritte Wurzel aus beiden Seiten. Die dritte Wurzel von 27 ist gleich s.")
]
#only("3")[
#voiceover("Und die dritte Wurzel von 27 ist 3. Also ist s gleich 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Antwort ✅]
#v(40pt)
#only("1-")[- Die Seitenlänge $s$ beträgt 3 Einheiten, wenn das Volumen $V$ 27 Kubikeinheiten beträgt.]
#only("1")[
#voiceover("Daher beträgt die Seitenlänge des Würfels 3 Einheiten, wenn das Volumen 27 Kubikeinheiten beträgt. Gut gemacht!")
]
]