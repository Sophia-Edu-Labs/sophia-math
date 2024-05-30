#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb 🎈]
#v(40pt)
#only("1-")[- Aufwärtskraft, die von einer Flüssigkeit auf einen Gegenstand ausgeübt wird 🌊]
#v(20pt)
#only("2-")[- Hängt vom Volumen und der Dichte des Gegenstands ab 📦]
#v(20pt)
#only("3-")[- Hängt auch von der Dichte der Flüssigkeit ab 💧]
#only("1")[
#voiceover("Auftrieb ist die Aufwärtskraft, die von einer Flüssigkeit auf einen Gegenstand ausgeübt wird, der teilweise oder vollständig in sie eingetaucht ist.")
]
#only("2")[
#voiceover("Die Größe der Auftriebskraft hängt vom Volumen und der Dichte des Gegenstands ab.")
]
#only("3")[
#voiceover("Sie hängt auch von der Dichte der Flüssigkeit ab, in die der Gegenstand eingetaucht ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Archimedes' Prinzip 🏛]
#v(40pt)
#only("1-")[$ F_"buoyant" = rho_"fluid" dot g dot V_"displaced" $]
#v(20pt)
#only("2-")[- $F_"buoyant"$: Auftriebskraft (N) 🎈]
#v(10pt)
#only("3-")[- $rho_"fluid"$: Dichte der Flüssigkeit (kg/m³) 💧]
#v(10pt)
#only("4-")[- $g$: Erdbeschleunigung (m/s²) 🌍]
#v(10pt)
#only("5-")[- $V_"displaced"$: verdrängtes Volumen der Flüssigkeit (m³) 📏]
#only("1")[
#voiceover("Das Prinzip von Archimedes besagt, dass die Auftriebskraft auf einen Gegenstand gleich dem Gewicht der von ihm verdrängten Flüssigkeit ist.")
]
#only("2")[
#voiceover("In der Gleichung steht F sub buoyant für die Auftriebskraft, gemessen in Newton.")
]
#only("3")[
#voiceover("Rho sub fluid ist die Dichte der Flüssigkeit, normalerweise gemessen in Kilogramm pro Kubikmeter.")
]
#only("4")[
#voiceover("g ist die Erdbeschleunigung, ungefähr 9,8 Meter pro Sekunde zum Quadrat auf der Erde.")
]
#only("5")[
#voiceover("Und V sub displaced ist das Volumen der von dem Gegenstand verdrängten Flüssigkeit, gemessen in Kubikmetern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schwimmen und Sinken 🚢]
#v(40pt)
#only("1-")[- Gegenstand schwimmt, wenn $rho_"object" < rho_"fluid"$ 🏊‍♂️]
#v(20pt)
#only("2-")[- Gegenstand sinkt, wenn $rho_"object" > rho_"fluid"$ ⚓]
#v(20pt)
#only("3-")[- Neutrale Auftriebskraft, wenn $rho_"object" = rho_"fluid"$ 🤿]
#only("1")[
#voiceover("Ein Gegenstand schwimmt, wenn seine Dichte geringer ist als die Dichte der Flüssigkeit, in der er sich befindet.")
]
#only("2")[
#voiceover("Andererseits sinkt der Gegenstand, wenn seine Dichte größer ist als die Dichte der Flüssigkeit.")
]
#only("3")[
#voiceover("Wenn die Dichte des Gegenstands gleich der Dichte der Flüssigkeit ist, erreicht er neutrale Auftriebskraft und bleibt in jeder Tiefe untergetaucht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Auftrieb: Aufwärtskraft, die von einer Flüssigkeit ausgeübt wird 🌊]
#v(20pt)
#only("2-")[- Hängt vom Volumen des Gegenstands, der Dichte des Gegenstands und der Dichte der Flüssigkeit ab 📦💧]
#v(20pt)
#only("3-")[- Archimedes' Prinzip: $F_"buoyant" = rho_"fluid" dot g dot V_"displaced"$ 🏛]
#v(20pt)
#only("4-")[- Schwimmen, Sinken oder neutrale Auftriebskraft wird durch relative Dichten bestimmt 🚢]
#only("1")[
#voiceover("Zusammenfassend: Auftrieb ist die Aufwärtskraft, die von einer Flüssigkeit auf einen Gegenstand ausgeübt wird.")
]
#only("2")[
#voiceover("Die Größe der Auftriebskraft hängt vom Volumen des Gegenstands, der Dichte des Gegenstands und der Dichte der Flüssigkeit ab.")
]
#only("3")[
#voiceover("Das Prinzip von Archimedes liefert die Gleichung zur Berechnung der Auftriebskraft.")
]
#only("4")[
#voiceover("Ob ein Gegenstand schwimmt, sinkt oder neutrale Auftriebskraft erreicht, wird durch den Vergleich seiner Dichte mit der Dichte der Flüssigkeit bestimmt.")
]
]