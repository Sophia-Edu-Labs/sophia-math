#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
#v(40pt)

#only("1-")[
$8/9 times 1/2 = ?$
]

#v(20pt)

#only("2-")[
$8/9 times 1/2 = (8 times 1)/(9 times 2)$
]

#v(20pt)

#only("3-")[
$8/9 times 1/2 = 8/(9 times 2)$
]

#v(20pt)

#only("4-")[
$8/9 times 1/2 = 8/18$
]

#v(20pt)

#only("5-")[
$8/18 = 4/9$ (vereinfacht)
]

#only("1")[
#voiceover("Das war nicht ganz richtig. Lass uns die Lösung Schritt für Schritt durchgehen. Wir beginnen mit dem Problem: acht Neuntel mal ein Halb.")
]

#only("2")[
#voiceover("Um Brüche zu multiplizieren, multiplizieren wir die Zähler miteinander und die Nenner miteinander. Also multiplizieren wir 8 mit 1 im Zähler und 9 mit 2 im Nenner.")
]

#only("3")[
#voiceover("Acht mal eins ist einfach acht, also bleibt unser Zähler acht.")
]

#only("4")[
#voiceover("Neun mal zwei ist achtzehn, also wird unser Nenner achtzehn. Das ergibt acht Achtzehntel.")
]

#only("5")[
#voiceover("Wir können diesen Bruch weiter vereinfachen. Sowohl 8 als auch 18 sind durch 2 teilbar, also teilen wir sowohl den Zähler als auch den Nenner durch 2. Das ergibt unsere endgültige Antwort: vier Neuntel.")
]
]