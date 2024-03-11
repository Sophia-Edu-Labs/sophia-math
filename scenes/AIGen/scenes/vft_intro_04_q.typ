#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide(max-repetitions: 20)[
#text(size: 28pt, weight: "bold")[#align(center)[Star Wars oder Harry Potter?]]
#v(40pt)
#only("2-")[
- 100 Schüler:innen
]
#only("3-")[
- 35 mögen Star Wars
]
#only("4-")[
- 85 mögen Harry Potter
]
#only("5-")[
- 25 mögen beides
]
#only("6-")[
$->$ Wie viele mögen nur Star Wars?
]
#v(40pt)
#only("2")[
#voiceover("In einer Klasse mit 100 Schülern")
]
#only("3")[
#voiceover("mögen insgesamt 35 Schüler Star Wars,")
]
#only("4")[
#voiceover("und 85 mögen Harry Potter. 25 Schüler mögen beides. Stelle die Daten in einer Vierfeldertafel dar und berechne, wie viele nur Star Wars mögen.")
]
#only("5")[
#voiceover("Von allen Schülern mögen 25 Schüler sowohl Star Wars, als auch Harry Potter...")
]
#only("6")[
#voiceover("Nutze nun eine Vierfeldertafel um herauszufinden, wie viele nur Star Wars mögen")
]
]