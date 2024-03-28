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
#voiceover("Betrachten wir, wie man eine 3 Em Aufgabe löst. Dafür haben wir ein Beispiel:")
] 
#v(40pt)
#only("2-")[Wir suchen #text(fill:red)[die minimale Anzahl an Würfen], um mit #text(fill:red)[mindestens 99% Wahrscheinlichkeit] #text(fill:red)[mindestens eine Sechs] zu würfeln.]
#only("2")[
#voiceover("Die Frage ist, wie oft man mindestens einen fairen sechsseitigen Würfel werfen muss, um mit einer Wahrscheinlichkeit von mindestens 99% mindestens eine Sechs zu würfeln. Schauen wir uns das Schritt für Schritt an.")
]
#only("3-")[
  #v(30pt)
  #text(weight:"bold")[Vorgehen]
  #v(30pt)
  - 1. Ungleichung Aufstellen
]
#only("4-")[
  - 2. Gegenwahrscheinlichkeit
]
#only("5-")[
  - 3. Wahrscheinlichkeiten ausdrücken
]
#only("6-")[
  - 4. Auflösen
]
#only("3")[
#voiceover("Zunächst stellen wir eine Ungleichung auf, die wir aus der Aufgabenstellung ableiten. Hier heisst das: Die Wahrscheinlichkeit, mindestens eine Sechs in n Würfen zu erhalten, ist größer oder gleich 0.99.")
]
#only("4")[
#voiceover("Dann betrachten wir die Gegenwahrscheinlichkeit, also die Wahrscheinlichkeit, dass das Ereignis nicht eintritt. Hier: Die Wahrscheinlichkeit, keine Sechs in n Würfen zu erhalten, ist kleiner oder gleich 0.01.")
]
#only("5")[
#voiceover("Als nächstes drücken wir diese Wahrscheinlichkeiten aus. Dafür setzen wir die Wahrscheinlichkeit, in einem Wurf keine Sechs zu würfeln, ein.")
]
#only("6")[
#voiceover("Und im letzten Schritt lösen wir dann die Ungleichung auf, um die minimale Anzahl zu finden. Also lösen wir das hier nach der Anzahl an Würfen n auf. Legen wir also los.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[1: Ungleichung]
#v(40pt)

#only("1-")[Sei $n$ die Anzahl der Würfe.

Dann gilt:

$P($"mind. 1 Sechs in $n$ Würfen"$)≥ 0.99$]

#only("1")[
#voiceover("Sei n die Anzahl der Würfe. Dann lautet die Ungleichung: Die Wahrscheinlichkeit, mindestens eine Sechs in n Würfen zu erhalten, ist größer oder gleich 0.99.")
]

#only("2")[
#voiceover("Diese Wahrscheinlichkeit ist allerdings schwierig direkt zu berechnen. Deswegen führen wir den zweiten Schritt durch: Wir betrachten die Gegenwahrscheinlichkeit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[2: Gegenwahrscheinlichkeit]
#v(40pt)

#only("1-")[

$P($"keine Sechs in $n$ Würfen"$) $
$= 1 - P(≥1$" Sechs in $n$ Würfen"$)$]

#only("1")[
#voiceover("Die Gegenwahrscheinlichkeit zu 'mindestens eine Sechs' ist 'keine Sechs'. Diese Gegenwahrscheinlichkeit ist gleich eins minus die Wahrscheinlichkeit für mindestens eine Sechs.")
]

#only("2-")[$P($"keine Sechs in $n$ Würfen"$) $$≤ 1 - 0.99 = 0.01$]

#only("2")[
#voiceover("Daraus folgt: Die Wahrscheinlichkeit, keine Sechs in n Würfen zu erhalten, ist kleiner oder gleich eins minus 0.99, also 0.01. Ermitteln wir jetzt diese Wahrscheinlichkeit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[3: Wahrscheinlichkeit ausdrücken]
#v(40pt)

#only("1-")[$P("keine Sechs")=5/6$
#v(20pt)
Für $n$ unabhängige Würfe gilt:
#v(20pt)
$P($"keine Sechs in $n$ Würfen"$) = (5/6)^n$]

#only("1")[
#voiceover("Die Wahrscheinlichkeit, in einem Wurf keine Sechs zu würfeln, ist fünf Sechstel. Da die Würfe unabhängig sind, ist die Wahrscheinlichkeit für n Würfe ohne Sechs gleich fünf Sechstel hoch n.")
]
#only("2")[#voiceover("Jetzt können wir die Gegenwahrscheinlichkeit in unsere ursprüngliche Ungleichung einsetzen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[4: Einsetzen]
#v(40pt)

#only("1-")[$(5/6)^n ≤ 0.01$]

#only("1")[
#voiceover("Wir setzen also fünf Sechstel hoch n ein und erhalten: fünf Sechstel hoch n ist kleiner oder gleich 0.01 Um die minimale Anzahl der Würfe zu finden, müssen wir diese Ungleichung nach n auflösen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 5: Ungleichung lösen]
#v(40pt)

#only("1-")[
$(5/6)^n ≤ 0.01$
]
#only("2-")[
#align(center)[#text(fill:aqua)[⇓ Logarithmieren]]
]
#only("3-")[
$n · log(5/6) ≤ log(0.01)$
]
#only("4-")[
#align(center)[#text(fill:aqua)[⇓ Umformen]]
]
#only("5-")[
$n ≥ log(0.01) / log(5/6)$
]
#only("6-")[
#align(center)[#text(fill:aqua)[⇓ Auswerten]

$n ≥ 16.4 ≈ 17$]
]


#only("2")[
#voiceover("Wir beginnen damit, auf beiden Seiten den Logarithmus zu nehmen.")
]
#only("3")[
#voiceover("Dann erhalten wir n mal den Logarithmus von fünf Sechstel ist kleiner oder gleich der Logarithmus von 0.01.")
]
#only("4")[
#voiceover("Dann formen wir die Ungleichung um und")
]
#only("5")[
#voiceover("erhalten n ist größer oder gleich der Logarithmus von 0.01 durch den Logarithmus von fünf Sechstel.")
]
#only("6")[
#voiceover("Das werten wir aus und erhalten n ist größer oder gleich 16.4, also ungefähr 17. Das bedeutet, dass wir mindestens 17 Würfe benötigen, um mit einer Wahrscheinlichkeit von mindestens 99% mindestens eine Sechs zu würfeln.")
]
]