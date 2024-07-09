#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Keine Sorge, das war nicht ganz richtig. Lass uns gemeinsam die Lösung Schritt für Schritt durchgehen, um zu sehen, wie wir zur richtigen Antwort kommen.")
]

#text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]

#v(40pt)

#only("2-")[#text()[$ x^2 - 6x + 9 = 0 $]]

#only("2")[
#voiceover("Wir beginnen mit der quadratischen Gleichung x Quadrat minus sechs x plus neun gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die quadratische Gleichung identifizieren]

#v(40pt)

#only("1-")[- Allgemeine Form: $a x^2 + b x + c = 0$]
#v(20pt)
#only("2-")[- Unsere Gleichung: $x^2 - 6x + 9 = 0$]
#v(20pt)
#only("3-")[- $a = 1$, $b = -6$, $c = 9$]

#only("1")[
#voiceover("Zuerst identifizieren wir die Komponenten unserer quadratischen Gleichung. Die allgemeine Form einer quadratischen Gleichung ist a x Quadrat plus b x plus c gleich null.")
]

#only("2")[
#voiceover("In unserem Fall haben wir x Quadrat minus sechs x plus neun gleich null.")
]

#only("3")[
#voiceover("Also ist a gleich eins, b gleich minus sechs und c gleich neun.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die quadratische Gleichung faktorisieren]

#v(40pt)

#only("1-")[- Ein perfektes quadratisches Trinom finden]
#v(20pt)
#only("2-")[- $(x - 3)^2 = x^2 - 6x + 9$]

#only("1")[
#voiceover("Um diesen Ausdruck zu faktorisieren, müssen wir erkennen, dass es sich um ein perfektes quadratisches Trinom handelt.")
]

#only("2")[
#voiceover("Die faktorisierte Form ist x minus drei, alles im Quadrat, was sich zu x Quadrat minus sechs x plus neun erweitert.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die faktorisierte Gleichung lösen]

#v(40pt)

#only("1-")[$(x - 3)^2 = 0$]
#v(20pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Wurzel aus beiden Seiten ziehen]]]
#v(20pt)
#only("3-")[$ x - 3 = 0 $]
#v(20pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ 3 zu beiden Seiten addieren]]]
#v(20pt)
#only("5-")[$ x = 3 $]

#only("1")[
#voiceover("Nun, da wir die Gleichung faktorisiert haben, haben wir x minus drei, alles im Quadrat, gleich null.")
]

#only("2")[
#voiceover("Um dies zu lösen, ziehen wir die Wurzel aus beiden Seiten.")
]

#only("3")[
#voiceover("Das gibt uns x minus drei gleich null.")
]

#only("4")[
#voiceover("Schließlich addieren wir drei zu beiden Seiten.")
]

#only("5")[
#voiceover("Und wir erhalten unsere Lösung: x gleich drei.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]

#v(40pt)

#only("1-")[Die Lösung für $x^2 - 6x + 9 = 0$ ist $x = 3$.]

#v(40pt)

#only("2-")[💡 Diese Gleichung hat eine doppelte Wurzel bei $x = 3$.]

#only("1")[
#voiceover("Also ist die Lösung unserer ursprünglichen Gleichung x Quadrat minus sechs x plus neun gleich null x gleich drei.")
]

#only("2")[
#voiceover("Es ist erwähnenswert, dass diese Gleichung eine doppelte Wurzel bei x gleich drei hat. Das bedeutet, dass drei die einzige Lösung ist, aber sie tritt zweimal auf.")
]
]