#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]

#v(40pt)

#only("1-")[$ x^2 + 6x + 9 = 0 $]

#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, wie wir zur richtigen Antwort gelangen.")
]

#only("2")[
#voiceover("Wir beginnen mit der quadratischen Gleichung x Quadrat plus sechs x plus neun gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Das Muster erkennen]

#v(40pt)

#only("1-")[$ x^2 + 6x + 9 = 0 $]
#v(20pt)
#only("2-")[$ (x + 3)^2 = x^2 + 6x + 9 $]

#only("1")[
#voiceover("Unser erster Schritt ist es, das Muster in dieser Gleichung zu erkennen. Beachte, dass die linke Seite der Gleichung ein perfektes Quadrattrinom ist.")
]

#only("2")[
#voiceover("Tatsächlich ist es die erweiterte Form von x plus drei, alles im Quadrat. Denke daran, x plus drei im Quadrat ergibt x Quadrat plus sechs x plus neun.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Gleichung faktorisieren]

#v(40pt)

#only("1-")[$ x^2 + 6x + 9 = 0 $]
#v(20pt)
#only("2-")[$ (x + 3)^2 = 0 $]

#only("1")[
#voiceover("Nachdem wir das Muster erkannt haben, können wir unsere Gleichung in faktorisierter Form umschreiben.")
]

#only("2")[
#voiceover("Unsere Gleichung wird zu x plus drei, alles im Quadrat, gleich null.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Die Gleichung lösen]

#v(40pt)

#only("1-")[$ (x + 3)^2 = 0 $]
#v(20pt)
#only("2-")[$ x + 3 = 0 $]
#v(20pt)
#only("3-")[$ x = -3 $]

#only("1")[
#voiceover("Um diese Gleichung zu lösen, müssen wir uns an ein wichtiges Prinzip erinnern: Das Quadrat einer reellen Zahl ist nur dann null, wenn diese Zahl selbst null ist.")
]

#only("2")[
#voiceover("Also können wir schließen, dass x plus drei gleich null sein muss.")
]

#only("3")[
#voiceover("Indem wir diese einfache lineare Gleichung lösen, erhalten wir x gleich minus drei.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Endgültige Antwort]

#v(40pt)

#only("1-")[$ x = -3 $]
#v(20pt)
#only("2-")[Lösung: $ (x + 3)^2 = 0, x = -3 $]

#only("1")[
#voiceover("Daher ist die Lösung unserer ursprünglichen quadratischen Gleichung x gleich minus drei.")
]

#only("2")[
#voiceover("Wir können unsere vollständige Lösung ausdrücken als: x plus drei im Quadrat gleich null, und x gleich minus drei.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Überprüfung]

#v(40pt)

#only("1-")[$ x^2 + 6x + 9 = 0 $]
#v(20pt)
#only("2-")[$ (-3)^2 + 6(-3) + 9 = 0 $]
#v(20pt)
#only("3-")[$ 9 - 18 + 9 = 0 $]
#v(20pt)
#only("4-")[$ 0 = 0 $ ✅]

#only("1")[
#voiceover("Lass uns unsere Lösung überprüfen, indem wir sie in die ursprüngliche Gleichung einsetzen.")
]

#only("2")[
#voiceover("Wir setzen minus drei für x in die Gleichung x Quadrat plus sechs x plus neun gleich null ein.")
]

#only("3")[
#voiceover("Das ergibt neun minus achtzehn plus neun gleich null.")
]

#only("4")[
#voiceover("Was sich zu null gleich null vereinfacht. Das bestätigt, dass unsere Lösung korrekt ist!")
]
]