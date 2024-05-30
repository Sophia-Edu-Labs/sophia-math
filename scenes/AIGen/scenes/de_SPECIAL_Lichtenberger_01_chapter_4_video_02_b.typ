#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb]
#v(40pt)
#only("1-")[Drei Objekte gleicher Größe aus Blei, Eisen und Styropor sind vollständig in Wasser eingetaucht. Für welches Objekt ist die Auftriebskraft am größten?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Für das Eisenobjekt]#only("2-")[#text(fill:green)[b) Für das Styroporobjekt]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Für das Styroporobjekt]#only("3-")[#text(fill:red)[a) Für das Eisenobjekt]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Für das Bleiobjekt]#only("4-")[#text(fill:red)[c) Für das Bleiobjekt]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Für alle gleich]#only("5-")[#text(fill:red)[d) Für alle gleich]]
#v(40pt)

#only("1")[#voiceover("Das ist richtig, tolle Arbeit! Die Auftriebskraft ist tatsächlich am größten für das Styroporobjekt. Lass uns sehen, warum...")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb hängt ab von...]
#v(40pt)
#only("1-")[1️⃣ Volumen der verdrängten Flüssigkeit]
#v(20pt)
#only("2-")[2️⃣ Dichte des Objekts]
#v(40pt)

#only("1")[#voiceover("Erstens, erinnere dich daran, dass der Auftrieb vom Volumen der durch das eingetauchte Objekt verdrängten Flüssigkeit abhängt. In diesem Fall haben alle Objekte die gleiche Größe, also verdrängen sie das gleiche Volumen Wasser.")]

#only("2")[#voiceover("Der Auftrieb hängt jedoch auch von der Dichte des Objekts im Verhältnis zur Dichte der Flüssigkeit ab. Je geringer die Dichte des Objekts, desto größer die Auftriebskraft, die auf es wirkt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dichten]
#v(40pt)
#only("1-")[
- Blei: 11,34 g/cm³ 🧱
- Eisen: 7,874 g/cm³ 🪨 
- Styropor: 0,05 g/cm³ 🪶
]
#v(40pt)
#only("2-")[Dichte von Wasser: 1 g/cm³ 💧]

#only("1")[#voiceover("Vergleichen wir die Dichten unserer Objekte. Blei hat die höchste Dichte mit 11,34 Gramm pro Kubikzentimeter, gefolgt von Eisen mit 7,874 Gramm pro Kubikzentimeter. Styropor hat eine sehr geringe Dichte von nur 0,05 Gramm pro Kubikzentimeter.")]

#only("2")[#voiceover("Nun hat Wasser eine Dichte von 1 Gramm pro Kubikzentimeter. Styropor ist das einzige Material, das weniger dicht ist als Wasser, was bedeutet, dass es die größte Auftriebskraft nach oben erfährt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[
- Gleiches verdrängtes Volumen 📏
- Styropor am wenigsten dicht 🪶
]
#v(40pt)
#only("2-")[⇒ Styropor erfährt die größte Auftriebskraft 🎈]

#only("1")[#voiceover("Zusammenfassend lässt sich sagen, dass alle Objekte das gleiche Volumen Wasser verdrängen, aber Styropor das am wenigsten dichte Material ist, sogar weniger dicht als Wasser.")]

#only("2")[#voiceover("Daher wird das Styroporobjekt die größte Auftriebskraft nach oben erfahren im Vergleich zu den Blei- und Eisenobjekten. Gut gemacht, dass du das richtig erkannt hast!")]
]