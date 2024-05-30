#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb 🌊]
#v(40pt)
#only("1-")[Drei gleich große Objekte aus Blei, Eisen und Styropor sind vollständig in Wasser eingetaucht. Bei welchem Objekt ist die Auftriebskraft am größten?]
#v(40pt)
#only("2-")[a) Beim Eisenobjekt 🎚️]
#v(10pt)
#only("3-")[b) Beim Styroporobjekt 🧽]
#v(10pt)
#only("4-")[c) Beim Bleiobjekt 🧱]
#v(10pt) 
#only("5-")[d) Bei allen gleich 🤝]
#only("1")[#voiceover("Lass uns dein Verständnis von Auftrieb testen. Wir haben drei gleich große Objekte aus Blei, Eisen und Styropor. Sie sind vollständig in Wasser eingetaucht. Bei welchem Objekt ist die Auftriebskraft am größten?")]
#only("2")[#voiceover("Ist es beim Eisenobjekt,")]
#only("3")[#voiceover("oder beim Styroporobjekt,")]
#only("4")[#voiceover("oder vielleicht beim Bleiobjekt,")]
#only("5")[#voiceover("oder ist die Auftriebskraft bei allen gleich?")]
]#questionDef(
questionText: "Drei gleich große Objekte aus Blei, Eisen und Styropor sind vollständig in Wasser eingetaucht. Bei welchem Objekt ist die Auftriebskraft am größten?", 
answerOptions: ("Beim Eisenobjekt", "Beim Styroporobjekt", "Beim Bleiobjekt", "Bei allen gleich"),
correctAnswerIndex: 1
)