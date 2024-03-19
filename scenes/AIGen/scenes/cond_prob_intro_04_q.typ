#import "../sophiatheme.typ": *
//apply theme (and default setup) ①②③④⑤⑥⑦⑧⑨⑩
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Bedingte Wahrscheinlichkeit]
#v(40pt)
#only("1-")[Urne mit Kugeln von ① bis ⑩]
#v(20pt)
#only("2-")[#text(weight: "bold")[Definiere Ereignisse:]]
#v(10pt)
#only("3-")[
- A: Kugel mit durch 3 teilbarer Zahl
]
#only("4-")[

- B: Kugel mit durch 2 teilbarer Zahl
]
#v(20pt)
#only("5-")[Berechne $P(A|B)$]
#v(10pt)
#only("6-")[
$P(A|B) = (P(A sect B))/(P(B))$

]
#only("1")[
#voiceover("Betrachte erneut eine Urne mit 10 Kugeln, die von 1 bis 10 durchnummeriert sind.")
]
#only("2")[
#voiceover("Definiere die folgenden zwei Ereignisse")

]
#only("3")[
#voiceover("Ereignis A ist, dass eine Kugel mit einer durch 3 teilbaren Zahl gezogen wird.")
]
#only("4")[
#voiceover("Und Ereignis B ist, dass eine Kugel mit einer durch 2 teilbaren Zahl gezogen wird.")
]
#only("5")[
#voiceover("Berechne nun mit Hilfe der Formel für bedingte Wahrscheinlichkeit die Wahrscheinlichkeit von A gegeben B, also die Wahrscheinlichkeit, dass A eintritt, wenn wir bereits wissen, dass B eingetreten ist.")
]
#only("6")[

#voiceover("Zur Erinnerung, die Formel für die bedingte Wahrscheinlichkeit lautet: P von A gegeben B ist gleich der Wahrscheinlichkeit des Schnitts von A und B geteilt durch die Wahrscheinlichkeit von B.")
]
]
#slide()[
#text(size: 30pt, weight: "bold")[Vorgehen]
#v(40pt)
#only("1-")[- Bestimme $P(B)$]
#v(20pt)
#only("2-")[- Überlege, welche Kugeln zu $A sect B$ gehören]
#v(20pt)
#only("3-")[- Nutze Formel für bedingte Wahrscheinlichkeit]
#only("1")[
#voiceover("Hier noch ein paar Tipps: Bestimme zunächst die Wahrscheinlichkeit, eine Kugel mit einer durch 2 teilbaren Zahl zu ziehen, also P von B.")
]
#only("2")[

#voiceover("Überlege dann, welche Kugeln sowohl eine durch 3 teilbare als auch eine durch 2 teilbare Zahl haben, um die Wahrscheinlichkeit für den Schnitt von A und B zu berechnen.")
]
#only("3")[
#voiceover("Setze schließlich alle Werte in die Formel für die bedingte Wahrscheinlichkeit ein und berechne so die gesuchte Wahrscheinlichkeit")

]
]

#questionDef(
questionText: "Was ist $P(A|B)$?",
// use latex!
answerOptions: ("$\frac{1}{5}$", "$\frac{1}{2}$"),
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