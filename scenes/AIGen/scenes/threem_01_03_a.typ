#import "../sophiatheme.typ": *

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
#voiceover("Super, das ist richtig.")
] 
#v(40pt)
#only("2-")[Wir suchen die minimale Anzahl an Würfen, um mit mindestens 99% Wahrscheinlichkeit mindestens eine durch 3 teilbare Zahl zu würfeln.]
#only("2")[
#voiceover("Wir suchen also die minimale Anzahl an Würfen, um mit mindestens 99% Wahrscheinlichkeit mindestens eine durch 3 teilbare Zahl zu würfeln.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Günstige Ereignisse]
#v(40pt)

#only("1-")[Auf einem sechsseitigen Würfel gibt es 2 durch 3 teilbare Zahlen: 3 und 6.

$P($"durch 3 teilbar"$) = 2/6 = 1/3$]

#only("1")[
#voiceover("Auf einem sechsseitigen Würfel gibt es zwei durch 3 teilbare Zahlen, nämlich 3 und 6. Die Wahrscheinlichkeit, eine durch 3 teilbare Zahl zu würfeln, ist also 2/6 oder 1/3.")
]

#only("2")[
#voiceover("Mit dieser Information können wir jetzt die Ungleichung aufstellen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Ungleichung]
#v(40pt)

#only("1-")[Sei $n$ die Anzahl der Würfe. Dann:

$P($"mind. 1 durch 3 teilbare Zahl in $n$ Würfen"$) ≥ 0.99$]

#only("1")[
#voiceover("Sei n die Anzahl der Würfe. Dann lautet die Ungleichung: Die Wahrscheinlichkeit, mindestens eine durch 3 teilbare Zahl in n Würfen zu erhalten, ist größer oder gleich 0.99.")
]

#only("2")[
#voiceover("Um das zu berechnen, betrachten wir im nächsten Schritt die Gegenwahrscheinlichkeit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Gegenwahrscheinlichkeit]
#v(40pt)

#only("1-")[
$P($"keine durch 3 teilbare Zahl in $n$ Würfen"$)$
$= 1 - P($"mind. 1 durch 3 teilbare Zahl in $n$ Würfen"$)$

$P($"keine durch 3 teilbare Zahl in $n$ Würfen"$) ≤ 0.01$]

#only("1")[
#voiceover("Die Gegenwahrscheinlichkeit zu 'mindestens eine durch 3 teilbare Zahl' ist 'keine durch 3 teilbare Zahl'. Diese ist gleich eins minus die Wahrscheinlichkeit für mindestens eine durch 3 teilbare Zahl, also kleiner oder gleich 0.01.")
]
#only("2")[#voiceover("Im nächsten Schritt drücken wir diese Wahrscheinlichkeit aus.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Wahrscheinlichkeit ausdrücken]
#v(40pt)

#only("1-")[$P($"keine durch 3 teilbare Zahl"$) = 1 - 1/3 = 2/3$

Für $n$ unabhängige Würfe:

$P($"keine durch 3 teilbare Zahl in $n$ Würfen"$) = (2/3)^n$]

#only("1")[
#voiceover("Die Wahrscheinlichkeit, in einem Wurf keine durch 3 teilbare Zahl zu würfeln, ist 1 minus 1/3, also 2/3. Für n unabhängige Würfe ist die Wahrscheinlichkeit dann 2/3 hoch n.")
]
#only("2")[#voiceover("Das setzen wir jetzt in unsere Ungleichung ein.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 5: Einsetzen und Lösen]
#v(40pt)

#only("1-")[$(2/3)^n ≤ 0.01$]

#only("2-")[
$n · log(2/3) ≤ log(0.01)$

$n ≥ log(0.01) / log(2/3)$]

#only("3-")[
$n ≥ 11.4 ≈ 12$]
]

#only("1")[
#voiceover("Wir setzen 2/3 hoch n ein und erhalten: 2/3 hoch n ist kleiner oder gleich 0.01.")
]
#only("2")[
#voiceover("Um n zu bestimmen, nehmen wir auf beiden Seiten den Logarithmus, formen um und erhalten: n ist größer oder gleich Logarithmus von 0.01 durch Logarithmus von 2/3.")
]  
#only("3")[
#voiceover("Das werten wir aus und erhalten: n ist größer oder gleich 11.4, also aufgerundet 12. Wir benötigen also mindestens 12 Würfe, um mit einer Wahrscheinlichkeit von mindestens 99% mindestens eine durch 3 teilbare Zahl zu würfeln.")
]
]</document_content>
</document>