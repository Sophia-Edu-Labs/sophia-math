#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Keine Sorge, das war nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen, um sie besser zu verstehen.")
]

#text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]

#v(40pt)

#only("2-")[#text()[$ x^2 + 4x + 4 = 0 $]]

#only("2")[
#voiceover("Wir beginnen mit der quadratischen Gleichung x Quadrat plus vier x plus vier gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Die Quadratische Gleichung identifizieren]

#v(40pt)

#only("1-")[- Allgemeine Form: $a x^2 + b x + c = 0$]
#v(20pt)
#only("2-")[- Unsere Gleichung: $x^2 + 4x + 4 = 0$]
#v(20pt)
#only("3-")[- $a = 1$, $b = 4$, $c = 4$]

#only("1")[
#voiceover("Zuerst identifizieren wir unsere quadratische Gleichung. Die allgemeine Form einer quadratischen Gleichung ist a x Quadrat plus b x plus c gleich null.")
]

#only("2")[
#voiceover("In unserem Fall haben wir x Quadrat plus vier x plus vier gleich null.")
]

#only("3")[
#voiceover("Also ist a gleich eins, b gleich vier und c gleich vier.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Faktorisierung]

#v(40pt)

#only("1-")[- Suche nach einem perfekten quadratischen Trinom]
#v(20pt)
#only("2-")[- $x^2 + 4x + 4$ ist ein perfektes quadratisches Trinom]
#v(20pt)
#only("3-")[- Es kann als $(x + 2)^2$ geschrieben werden]

#only("1")[
#voiceover("Als nächstes suchen wir nach einer Möglichkeit, diese Gleichung zu faktorisieren. In diesem Fall sehen wir, dass x Quadrat plus vier x plus vier ein perfektes quadratisches Trinom ist.")
]

#only("2")[
#voiceover("Ein perfektes quadratisches Trinom hat die Form x Quadrat plus zwei a x plus a Quadrat, wobei a eine Zahl ist.")
]

#only("3")[
#voiceover("In unserem Fall ist a zwei. Also können wir unsere Gleichung als x plus zwei, alles im Quadrat, umschreiben.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Die Gleichung umschreiben]

#v(40pt)

#only("1-")[$ x^2 + 4x + 4 = 0 $]
#v(20pt)
#only("2-")[$ (x + 2)^2 = 0 $]

#only("1")[
#voiceover("Nun lass uns unsere ursprüngliche Gleichung in dieser faktoriellen Form umschreiben.")
]

#only("2")[
#voiceover("Unsere Gleichung wird zu x plus zwei, alles im Quadrat, gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Die Gleichung lösen]

#v(40pt)

#only("1-")[$ (x + 2)^2 = 0 $]
#v(20pt)
#only("2-")[$ x + 2 = 0 $]
#v(20pt)
#only("3-")[$ x = -2 $]

#only("1")[
#voiceover("Um diese Gleichung zu lösen, beachten wir, dass ein Quadrat nur dann null ist, wenn der Term im Quadrat null ist.")
]

#only("2")[
#voiceover("Also können wir sagen, dass x plus zwei null sein muss.")
]

#only("3")[
#voiceover("Wenn wir das lösen, erhalten wir x gleich minus zwei.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]

#v(40pt)

#only("1-")[Die Lösung ist $x = -2$ 🎉]

#only("1")[
#voiceover("Daher ist die Lösung unserer quadratischen Gleichung x Quadrat plus vier x plus vier gleich null x gleich minus zwei. Gut gemacht, dass du dieses Problem gelöst hast!")
]
]