#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]
#set text(lang: "de")
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]
#set text(lang: "de")

#slide()[
#text(weight:"bold", size: 40pt)[3 M Aufgabe]
#only("1")[
#voiceover("Leider falsch..")
] 
#v(40pt)
#only("2-")[Wir suchen die minimale Anzahl an Würfen, um mit mindestens 95% Wahrscheinlichkeit mindestens eine Drei zu würfeln.]
#only("2")[
#voiceover("Wir suchen also die minimale Anzahl an Würfen, um mit mindestens 95% Wahrscheinlichkeit mindestens eine Drei zu würfeln.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Ungleichung]
#v(40pt)

#only("1-")[Sei $n$ die Anzahl der Würfe. Dann:

$P($"mind. 1 Drei in $n$ Würfen"$) ≥ 0.95$]

#only("1")[
#voiceover("Sei n die Anzahl der Würfe. Dann lautet die Ungleichung: Die Wahrscheinlichkeit, mindestens eine Drei in n Würfen zu erhalten, ist größer oder gleich 0.95.")
]

#only("2")[
#voiceover("Um das zu berechnen, betrachten wir im zweiten Schritt die Gegenwahrscheinlichkeit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Gegenwahrscheinlichkeit]
#v(40pt)

#only("1-")[
$P($"keine Drei in $n$ Würfen"$)$
$= 1 - P($"mind. 1 Drei in $n$ Würfen"$)$

$P($"keine Drei in $n$ Würfen"$) ≤ 0.05$]

#only("1")[
#voiceover("Die Gegenwahrscheinlichkeit zu 'mindestens eine Drei' ist 'keine Drei'. Diese ist gleich eins minus die Wahrscheinlichkeit für mindestens eine Drei, also kleiner oder gleich 0.05.")
]
#only("2")[#voiceover("Im nächsten Schritt drücken wir diese Wahrscheinlichkeit aus.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Wahrscheinlichkeit ausdrücken]
#v(40pt)

#only("1-")[$P("keine Drei")=5/6$

Für $n$ unabhängige Würfe:

$P($"keine Drei in $n$ Würfen"$) = (5/6)^n$]

#only("1")[
#voiceover("Die Wahrscheinlichkeit, in einem Wurf keine Drei zu würfeln, ist fünf Sechstel. Für n unabhängige Würfe ist die Wahrscheinlichkeit dann fünf Sechstel hoch n.")
]
#only("2")[#voiceover("Das setzen wir jetzt in unsere Ungleichung ein.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Einsetzen und Lösen]
#v(40pt)

#only("1-")[$(5/6)^n ≤ 0.05$]

#only("2-")[
$n · log(5/6) ≤ log(0.05)$

$n ≥ log(0.05) / log(5/6)$]

#only("3-")[
$n ≥ 10.3 ≈ 11$]


#only("1")[
#voiceover("Wir setzen fünf Sechstel hoch n ein und erhalten: fünf Sechstel hoch n ist kleiner oder gleich 0.05.")
]
#only("2")[
#voiceover("Um n zu bestimmen, nehmen wir auf beiden Seiten den Logarithmus, formen um und erhalten: n ist größer oder gleich Logarithmus von 0.05 durch Logarithmus von fünf Sechstel.")
]  
#only("3")[
#voiceover("Das werten wir aus und erhalten: n ist größer oder gleich 10.3, also ungefähr 11. Wir benötigen also mindestens 11 Würfe, um mit einer Wahrscheinlichkeit von mindestens 95% mindestens eine Drei zu würfeln.")
]
]