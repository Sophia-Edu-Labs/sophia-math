#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Design eines schwimmenden Hauses]
#v(40pt)
#only("1-")[- Beinhaltet die Berechnung der Auftriebskraft 🌊]
#v(20pt)
#only("2-")[- Die Auftriebskraft hält das Haus über Wasser und stabil 🏠⚖]
#only("1")[
#voiceover("Das Design eines schwimmenden Hauses beinhaltet die Berechnung der Auftriebskraft, die benötigt wird, um das Haus über Wasser und stabil zu halten.")
]
#only("2")[
#voiceover("Die Auftriebskraft ist das, was das Haus auf dem Wasser schwimmen lässt und seine Stabilität gewährleistet.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftriebskraft]
#v(40pt)
#only("1-")[- Aufwärts gerichtete Kraft, die von einer Flüssigkeit auf einen Körper ausgeübt wird 🆙]
#v(20pt)
#only("2-")[- Entspricht dem Gewicht der vom Körper verdrängten Flüssigkeit 🌊🏋]
#v(20pt)
#only("3-")[$ F_"Auftrieb" = rho_"Flüssigkeit" dot V_"verdrängt" dot g $]
#only("1")[
#voiceover("Die Auftriebskraft ist die aufwärts gerichtete Kraft, die von einer Flüssigkeit auf einen darin eingetauchten Körper ausgeübt wird.")
]
#only("2")[
#voiceover("Die Größe der Auftriebskraft entspricht dem Gewicht der vom Körper verdrängten Flüssigkeit.")
]
#only("3")[
#voiceover("Mathematisch entspricht die Auftriebskraft der Dichte der Flüssigkeit multipliziert mit dem Volumen der verdrängten Flüssigkeit und der Erdbeschleunigung.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung der Auftriebskraft]
#v(40pt)
#only("1-")[- Bestimme das Gewicht des schwimmenden Hauses 🏠⚖]
#v(20pt)
#only("2-")[- Berechne das verdrängte Wasservolumen 💧📏]
#v(20pt)
#only("3-")[- Verwende die Formel: $ F_"Auftrieb" = rho_"Wasser" dot V_"verdrängt" dot g $]
#only("1")[
#voiceover("Um die Auftriebskraft zu berechnen, müssen wir zuerst das Gewicht des schwimmenden Hauses bestimmen.")
]
#only("2")[
#voiceover("Als nächstes berechnen wir das Volumen des verdrängten Wassers durch den untergetauchten Teil des Hauses.")
]
#only("3")[
#voiceover("Schließlich verwenden wir die Formel für die Auftriebskraft, indem wir die Dichte des Wassers, das verdrängte Wasservolumen und die Erdbeschleunigung einsetzen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stabilität]
#v(40pt)
#only("1-")[- Die Auftriebskraft sollte dem Gewicht des Hauses entsprechen 🏠⚖]
#v(20pt)
#only("2-")[- Der Auftriebsmittelpunkt sollte mit dem Schwerpunkt übereinstimmen 🎯]
#only("1")[
#voiceover("Damit das schwimmende Haus stabil ist, sollte die Auftriebskraft dem Gewicht des Hauses entsprechen.")
]
#only("2")[
#voiceover("Zusätzlich sollte der Auftriebsmittelpunkt, also der Punkt, an dem die Auftriebskraft wirkt, mit dem Schwerpunkt des Hauses übereinstimmen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Das Design eines schwimmenden Hauses beinhaltet die Berechnung der Auftriebskraft 🏠🌊]
#v(20pt)
#only("2-")[- Die Auftriebskraft entspricht dem Gewicht der verdrängten Flüssigkeit 🆙🌊]
#v(20pt)
#only("3-")[- Stabilität wird erreicht, wenn die Auftriebskraft dem Hausgewicht entspricht und die Mittelpunkte übereinstimmen 🎯⚖]
#only("1")[
#voiceover("Zusammenfassend beinhaltet das Design eines schwimmenden Hauses die Berechnung der Auftriebskraft, die benötigt wird, um das Haus über Wasser zu halten.")
]
#only("2")[
#voiceover("Die Auftriebskraft entspricht dem Gewicht der vom untergetauchten Teil des Hauses verdrängten Flüssigkeit.")
]
#only("3")[
#voiceover("Stabilität wird erreicht, wenn die Auftriebskraft dem Gewicht des Hauses entspricht und der Auftriebsmittelpunkt mit dem Schwerpunkt übereinstimmt.")
]
]