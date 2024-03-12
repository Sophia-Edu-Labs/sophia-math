#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#only("1")[
#voiceover("Das ist richtig, toll gemacht!")
]
#only("1-")[
#text(size: 26pt, weight: "bold")[⚅ Dreimaliger Würfelwurf ⚀]
#v(40pt)
]
#only("2")[
#voiceover("Erinnern wir uns: Ein Ergebnis beim dreimaligen Würfelwurf ist ein Tripel (a, b, c), wobei a, b und c jeweils Zahlen zwischen 1 und 6 sind, entsprechend den Augenzahlen auf dem Würfel.")
]
#only("2-")[
#text(weight: "bold")[Ergebnis:]

Tripel $(a, b, c)$ mit $a,b,c in {1,2,3,4,5,6}$

]
#only("3")[
#voiceover("Der Ereignisraum enthält alle möglichen Ergebnisse. Also alle Tripel, die aus den Zahlen 1 bis 6 bestehen.")
]
#only("3-")[
#v(20pt)
#text(weight: "bold")[Ereignisraum:]

$Omega = {(1,1,1), (1,1,2), ...,$
$ (6,6,5), (6,6,6)} $

]
#only("4")[
#voiceover("Wie viele Elemente hat dieser Ereignisraum? Nun, es gibt 6 Möglichkeiten für den ersten Wurf, 6 für den zweiten und 6 für den dritten.")
]
#only("4-")[
#v(20pt)
#text(weight: "bold")[Mächtigkeit:]

Für jeden Wurf: 6 Möglichkeiten
]
#only("5")[
#voiceover("Insgesamt gibt es damit 6 mal 6 mal 6, also 216 mögliche Ergebnisse.")
]
#only("5-")[
$->|Omega| = 6 dot 6 dot 6 = 216$
]
]