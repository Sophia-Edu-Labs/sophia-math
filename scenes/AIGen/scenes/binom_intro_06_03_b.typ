#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Binomialverteilung]
#v(40pt)
#only("1")[
#voiceover("Leider falsch. Schauen wir uns die richtige Lösung an.")
]
#only("2-")[
- Günstige Ereignisse: $2$, $4$, $6$
- Wahrscheinlichkeit für gerade Zahl: $p = 3/6 = 1/2$
]
#only("3-")[
- Gegenwahrscheinlichkeit $q = 1 - p = 1/2$
- Gesucht: $P(X ≥ 1) ≥ 0.95$, wobei $X$ die Anzahl der Würfe bis zur ersten geraden Zahl ist
]
#only("4-")[
- Gegenwahrscheinlichkeit: $P(X = 0) ≤ 0.05$
#v(30pt)
]
#only("2")[
#voiceover("Zunächst identifizieren wir die günstigen Ereignisse: Das sind die geraden Zahlen 2, 4 und 6. Die Wahrscheinlichkeit, eine gerade Zahl zu würfeln, ist damit 3/6 oder 1/2.")
]
#only("3")[
#voiceover("Die Gegenwahrscheinlichkeit q ist dann 1 minus p, also auch 1/2. Gesucht ist die Anzahl der Würfe, sodass die Wahrscheinlichkeit, mindestens eine gerade Zahl zu würfeln, größer oder gleich 95% ist.")
]
#only("4")[
#voiceover("Das können wir auch über die Gegenwahrscheinlichkeit ausdrücken: Die Wahrscheinlichkeit, in allen Würfen keine gerade Zahl zu haben, soll höchstens 5% sein.")
]
#only("5-")[
$P(X = 0) = q^n ≤ 0.05$
]
#only("6-")[
$(1/2)^n ≤ 0.05$
]
#only("7-")[
$n ≥ log_(1/2)(0.05)$
$n ≥ (log(0.05))/(log(1/2))$
]
#only("8-")[
$n ≥ 4.32$
]
#only("9-")[
Also muss man mindestens $5$ mal würfeln.
]
#only("5")[
#voiceover("Wenn wir n mal würfeln, ist diese Wahrscheinlichkeit q hoch n.")
]
#only("6")[
#voiceover("Wir setzen für q eine halb ein und fordern, dass dies kleiner oder gleich 5% ist.")
]
#only("7")[
#voiceover("Lösen wir die Ungleichung nach n auf, erhalten wir, dass n größer oder gleich dem Logarithmus von 0,05 zur Basis 1/2 sein muss.")
]
#only("8")[
#voiceover("Das ergibt n größer oder gleich 4,32.")
]
#only("9")[
#voiceover("Da wir nur ganzzahlig würfeln können, muss man also mindestens 5 mal würfeln, um mit mindestens 95% Wahrscheinlichkeit eine gerade Zahl zu erhalten.")
]
]