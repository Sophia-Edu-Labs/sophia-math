#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Binomialverteilung]
#v(40pt)
#only("1")[
#voiceover("Wenn wir ein Bernoulli-Zufallsexperiment oft wiederholen, dann erhalten wir eine Binomialverteilte Zufallsvariable.")
]
#only("2-")[
#box()[
#text(weight:"bold")[Definition:]
Eine Zufallsvariable $X$ ist #text(blue)[binomialverteilt] mit Parametern $n$ und $p$, wenn sie die #text(blue)[Anzahl der Erfolge] in einer #text(blue)[Serie] von $n$ unabhängigen Versuchen zählt, die jeweils mit #text(blue)[Wahrscheinlichkeit] $p$ erfolgreich sind.
]
]
#only("2")[

#voiceover("Eine Zufallsvariable X heißt binomialverteilt mit Parametern n und p, wenn sie die Anzahl der Erfolge in einer Serie von n unabhängigen Versuchen zählt, die jeweils mit Wahrscheinlichkeit p erfolgreich sind.")
]
#only("3-")[

#text(weight:"bold")[Notation:] $X ~ B(n,p)$, wobei
]
#only("4-")[

- $n$: #text(blue)[Anzahl] der Versuche
]
#only("5-")[
- $p$: #text(blue)[Erfolgswahrscheinlichkeit] bei jedem Versuch
]
#only("3")[
#voiceover("Man schreibt dann X ist binomialverteilt mit Parametern n und p, wobei n die Anzahl der Versuche und p die Erfolgswahrscheinlichkeit bei jedem einzelnen Versuch ist.")

]
#only("4")[
#voiceover("Die Wahrscheinlichkeit, in n Versuchen genau k Erfolge zu erzielen, berechnet man mit der Binomialformel:")
]
#only("6-")[
#v(20pt)
#text(weight:"bold")[Binomialformel:]

$P(X=k) $
$= binom(n,k) dot p^k dot (1-p)^(n-k)$
]
]
#slide()[
#only("1")[
#voiceover("Nun wenden wir unser Wissen über die Binomialverteilung an, um das Beispiel von der Bogenschützin zu lösen.")
]
#box()[
Eine Bogenschützin absolviert eine Trainingseinheit, indem sie 15 mal auf eine
Zielscheibe schießt. Die Wahrscheinlichkeit, dass sie die Scheibe trifft, beträgt
90%.
AUFGABE: Berechne die Wahrscheinlichkeit für das folgende Ereignis:
A: Die Schützin trifft die Scheibe exakt 12 mal
]
#only("2")[
#voiceover("Um die Wahrscheinlichkeit mit der Binomialformel berechnen zu können, identifizieren wir zunächst die gegebenen Parameter n und p sowie die gesuchte Anzahl Erfolge k.")
]
#only("2-")[

#v(20pt)
$n = 15$ (Anzahl Versuche)
$p = 0,90$ (Erfolgswahrscheinlichkeit)
$k = 12$ (gesuchte Anzahl Erfolge)
]
#only("3")[
#voiceover("Nun setzen wir diese Werte in die Binomialformel ein:")

]
#only("3-")[
$P(X = 12)$

$=binom(15,12) dot 0.9^(12) dot (1-0.9)^(15-12)$
]
#only("4")[
#voiceover("Wir berechnen den Binomialkoeffizienten 15 über 12, potenzieren und multiplizieren die Terme:")
]
#only("4-8")[

$= binom(15,12) dot 0.9^(12) dot (1-0.9)^(3)$

$= (15!) / (12! dot 3!) dot 0.90^(12) dot 0.1^(3)$



$= 455 dot 0.28 dot 0.001 approx 13%$

]
#only("8")[
#voiceover("Wir erhalten als Endergebnis eine Wahrscheinlichkeit von circa 13 Prozent dafür, dass die Bogenschützin in 15 Versuchen exakt 12 mal die Scheibe trifft.")
]
]

#questionDef(
questionText: "TEST?",
// use latex!
answerOptions: ("$\frac{2}{3}$", "$\frac{1}{2}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$")
),
)