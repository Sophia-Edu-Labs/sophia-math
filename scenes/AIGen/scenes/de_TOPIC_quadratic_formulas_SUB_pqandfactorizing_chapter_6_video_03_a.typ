#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Großartige Arbeit beim Lösen dieser quadratischen Gleichung! Lass uns Schritt für Schritt die Lösung durchgehen, um zu verstehen, wie wir zur Antwort gekommen sind.")
]

#text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]

#v(40pt)

#only("1-")[Gleichung: $x^2 - 8x + 16 = 0$]

#only("1")[
#voiceover("Wir beginnen mit der quadratischen Gleichung x Quadrat minus 8x plus 16 gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Die Quadratische Gleichung identifizieren]
#v(40pt)
#only("1-")[- $a = 1$]
#v(20pt)
#only("2-")[- $b = -8$]
#v(20pt)
#only("3-")[- $c = 16$]

#only("1")[
#voiceover("Zuerst identifizieren wir die Koeffizienten unserer quadratischen Gleichung. Der Koeffizient von x Quadrat, den wir a nennen, ist 1.")
]
#only("2")[
#voiceover("Der Koeffizient von x, den wir b nennen, ist minus 8.")
]
#only("3")[
#voiceover("Und der konstante Term, den wir c nennen, ist 16.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Perfektes Quadrat erkennen]
#v(40pt)
#only("1-")[- $(x - 4)^2 = x^2 - 8x + 16$ 🔍]
#v(20pt)
#only("2-")[- Unsere Gleichung passt zu dieser Form! ✅]

#only("1")[
#voiceover("Nun schauen wir uns die Form unserer Gleichung an. Es ist tatsächlich ein perfektes quadratisches Trinom. Die allgemeine Form eines perfekten quadratischen Trinoms ist x minus eine Zahl im Quadrat, was sich zu x Quadrat minus zwei mal diese Zahl mal x plus diese Zahl im Quadrat erweitert.")
]
#only("2")[
#voiceover("Unsere Gleichung passt perfekt zu dieser Form, wobei die Zahl 4 ist. Wir können unsere Gleichung also als x minus 4 im Quadrat gleich null umschreiben.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Die Gleichung lösen]
#v(40pt)
#only("1-")[$(x - 4)^2 = 0$]
#v(20pt)
#only("2-")[$(x - 4)^2 = 0$]
#only("2-")[$(x - 4) = 0$ ⟹ $x = 4$]

#only("1")[
#voiceover("Jetzt haben wir die Gleichung x minus 4 im Quadrat gleich null.")
]
#only("2")[
#voiceover("Damit dies wahr ist, muss x minus 4 gleich null sein, denn jede Zahl im Quadrat ist nur dann null, wenn die Zahl selbst null ist. Also, wenn wir x minus 4 gleich null lösen, erhalten wir x gleich 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]
#v(40pt)
#only("1-")[Lösung: $x = 4$ 🎉]

#only("1")[
#voiceover("Daher ist die Lösung unserer quadratischen Gleichung x Quadrat minus 8x plus 16 gleich null x gleich 4. Das ist unsere endgültige Antwort!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Überprüfung]
#v(40pt)
#only("1-")[Lass uns überprüfen: $4^2 - 8(4) + 16 = 0$?]
#v(20pt)
#only("2-")[$16 - 32 + 16 = 0$]
#v(20pt)
#only("3-")[$0 = 0$ ✅]

#only("1")[
#voiceover("Um unsere Lösung zu überprüfen, setzen wir 4 wieder in unsere ursprüngliche Gleichung ein. Wir erhalten 4 Quadrat minus 8 mal 4 plus 16 gleich null.")
]
#only("2")[
#voiceover("Vereinfachen wir das, erhalten wir 16 minus 32 plus 16 gleich null.")
]
#only("3")[
#voiceover("Das vereinfacht sich zu null gleich null, was wahr ist! Das bestätigt, dass unsere Lösung korrekt ist.")
]
]