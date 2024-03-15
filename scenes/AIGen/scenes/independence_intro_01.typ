#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Stochastische Unabhängigkeit]
#v(40pt)
#only("1-")[- #text(weight: "bold")[Beziehung] zwischen Ereignissen]
#v(20pt)
#only("2-")[- #text(weight: "bold")[Bedeutung:] Eintreten von A beeinflusst Wahrscheinlichkeit von B nicht]
#v(20pt)
#only("3-")[- #text(weight: "bold")[Formal:] $ P(A sect B) = P(A) * P(B) $]
#only("1")[
#voiceover("Stochastische Unabhängigkeit ist ein wichtiges Konzept in der Wahrscheinlichkeitstheorie. Es beschreibt die Beziehung zwischen zwei Ereignissen.")
]
#only("2")[
#voiceover("Wenn zwei Ereignisse A und B unabhängig sind, bedeutet das, dass das Eintreten von Ereignis A keinen Einfluss auf die Wahrscheinlichkeit hat, mit der Ereignis B eintritt, und umgekehrt.")
]
#only("3")[
#voiceover("Formal ausgedrückt sind zwei Ereignisse genau dann unabhängig, wenn die Wahrscheinlichkeit für den Schnitt von A und B gleich dem Produkt der Einzelwahrscheinlichkeiten von A und B ist. Also nochmal: Zwei Ereignisse A und B sind unabhängig, wenn das Eintreten von A keinen Einfluss auf die Wahrscheinlichkeit von B hat und umgekehrt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[
  - A: Person mag Bier (50%)
]
#only("2-")[
- B: Person spielt Bier-Pong (30%)
]
#only("1-")[
- $P(A sect B) = 25%$]
#v(20pt)
#only("4-")[- $P(A) = 0.5$, $P(B) = 0.3$
- $P(A) * P(B) = 0.15$]
#v(20pt)
#only("5-")[- $P(A sect B) != P(A) * P(B)$
- $0.25 != 0.15$]
#v(20pt)
#only("4-")[#text(weight: "bold")[Fazit:] A und B sind nicht unabhängig]
#only("1-")[
#voiceover("<split />Betrachten wir ein konkretes Beispiel: Auf einer Party mögen 50% der Gäste Bier, das ist unser Ereignis A. ")
]
#only("2-")[
#voiceover("30% der Gäste spielen gerne Bier-Pong, das ist Ereignis B")
]
#only("3-")[
#voiceover("Wir wissen außerdem, dass 25% der Gäste sowohl gerne Bier mögen als auch gerne Bier-Pong spielen. Jetzt wollen wir wissen: Sind die Ereignisse A und B unabhängig? Oder in anderen Worten: Hat es einen Einfluss darauf, ob jemand gerne Bier-Pong spielt, ob er oder sie auch gerne Bier mag, und umgekehrt? Um das Herauszufinden,")
]
#only("4-")[
#voiceover("berechnen wir das Produkt der Einzelwahrscheinlichkeiten, und vergleichen das Ergebnis mit der Wahrscheinlichkeit des Schnittes der Ereignisse: 0.5 mal 0.3 ergibt 0.15 oder 15%.")
]
#only("5-")[
#voiceover("Wir stellen fest: Die tatsächliche Schnittwahrscheinlichkeit von 25% entspricht nicht dem Produkt der Einzelwahrscheinlichkeiten von 15%. Sie ist wesentlich größer.")
]
#only("6-")[
#voiceover("Somit sind die Ereignisse A und B in diesem Beispiel nicht unabhängig. Das bedeutet, dass die Tatsache, ob jemand Bier mag, sehr wohl einen Einfluss darauf hat, ob er oder sie auch gerne Bier-Pong spielt, und umgekehrt. konkret bedeutet das, dass die Wahrscheinlichkeit, dass jemand gerne Bier-Pong spielt, höher ist, wenn er oder sie auch gerne Bier mag, und umgekehrt. Das leuchtet ein, oder?")
]
]