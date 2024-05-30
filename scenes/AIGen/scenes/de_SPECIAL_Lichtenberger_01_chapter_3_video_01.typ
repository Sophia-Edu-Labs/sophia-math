#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb 🌊]
#v(40pt)
#only("1-")[- Aufwärtskraft, die von einer Flüssigkeit auf ein Objekt ausgeübt wird 🎈]
#v(20pt)
#only("2-")[- Hängt von der Dichte und dem Volumen des Objekts ab 🧱📏]
#only("1")[
#voiceover("Auftrieb ist die Aufwärtskraft, die von einer Flüssigkeit, wie Wasser, auf ein darin eingetauchtes Objekt ausgeübt wird.")
]
#only("2")[
#voiceover("Die Stärke dieser Auftriebskraft hängt von der Dichte und dem Volumen des Objekts ab.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Dichte 🧱]
#v(40pt)
#only("1-")[- Masse pro Volumeneinheit]
#v(20pt)
#only("2-")[- Formel: $"Dichte" = "Masse" / "Volumen"$]
#v(20pt)
#only("3-")[- Weniger dichte Objekte schwimmen, dichtere Objekte sinken 🪵⚓]
#only("1")[
#voiceover("Dichte ist ein Maß für die Masse eines Objekts pro Volumeneinheit.")
]
#only("2")[
#voiceover("Sie kann berechnet werden, indem die Masse des Objekts durch sein Volumen geteilt wird.")
]
#only("3")[
#voiceover("Objekte, die weniger dicht als Wasser sind, wie Holz, schwimmen. Dichtere Objekte, wie ein Anker, sinken.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Volumen 📏]
#v(40pt)
#only("1-")[- Menge des Raums, den ein Objekt einnimmt]
#v(20pt)
#only("2-")[- Größeres Volumen → mehr verdrängtes Wasser → mehr Auftrieb 🚢]
#only("1")[
#voiceover("Volumen ist die Menge des Raums, den ein Objekt einnimmt.")
]
#only("2")[
#voiceover("Ein größeres Volumen bedeutet, dass mehr Wasser verdrängt wird, was zu einer größeren Auftriebskraft führt. Deshalb können große Schiffe trotz ihrer dichten Materialien schwimmen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Prinzip 🏛]
#v(40pt)
#only("1-")[- Auftriebskraft = Gewicht der verdrängten Flüssigkeit]
#v(20pt)
#only("2-")[- $F_("Auftrieb") = "Dichte_"("Flüssigkeit") dot "Volumen_"("verdrängt") dot g$]
#only("1")[
#voiceover("Das Prinzip von Archimedes besagt, dass die Auftriebskraft auf ein Objekt gleich dem Gewicht der von dem Objekt verdrängten Flüssigkeit ist.")
]
#only("2")[
#voiceover("Mathematisch entspricht die Auftriebskraft der Dichte der Flüssigkeit multipliziert mit dem verdrängten Volumen der Flüssigkeit, multipliziert mit der Erdbeschleunigung.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schwimmen vs. Sinken 🎈⚓]
#v(40pt)
#only("1-")[- Objekt schwimmt, wenn $F_("Auftrieb") >= F_("Gravitation")$]
#v(20pt)
#only("2-")[- Objekt sinkt, wenn $F_("Auftrieb") < F_("Gravitation")$]
#only("1")[
#voiceover("Ein Objekt wird schwimmen, wenn die Auftriebskraft größer oder gleich der Gravitationskraft auf das Objekt ist.")
]
#only("2")[
#voiceover("Wenn die Auftriebskraft kleiner als die Gravitationskraft ist, wird das Objekt sinken.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Auftrieb hängt von Dichte und Volumen ab 🧱📏]
#v(20pt)
#only("2-")[- Weniger dicht, größeres Volumen → mehr Auftrieb 🚢]
#v(20pt)
#only("3-")[- Archimedes' Prinzip: $F_("Auftrieb") = "Dichte_"("Flüssigkeit") dot "Volumen_"("verdrängt") dot g$ 🏛]
#only("1")[
#voiceover("Zusammenfassend hängt der Auftrieb eines Objekts im Wasser von seiner Dichte und seinem Volumen ab.")
]
#only("2")[
#voiceover("Objekte, die weniger dicht sind und ein größeres Volumen haben, erfahren mehr Auftrieb.")
]
#only("3")[
#voiceover("Diese Beziehung wird durch das Prinzip von Archimedes beschrieben, das besagt, dass die Auftriebskraft der Dichte der Flüssigkeit multipliziert mit dem verdrängten Volumen der Flüssigkeit, multipliziert mit der Erdbeschleunigung entspricht.")
]
]