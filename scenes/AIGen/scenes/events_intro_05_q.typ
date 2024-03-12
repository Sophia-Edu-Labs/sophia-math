#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#only("1")[
#voiceover("Lass uns zunächst den Ereignisraum für den zweimaligen Münzwurf betrachten. Bei einem zweimaligen Münzwurf kann jeder Wurf entweder Kopf (K) oder Zahl (Z) ergeben. ")
]
#only("1-")[
#text(size: 26pt, weight: "bold")[₡ Zweimaliger Münzwurf ₡]
#v(40pt)
]
#only("2")[
#voiceover("Ein Ergebnis besteht aus einem Paar von K oder Z, das die Ergebnisse des ersten und zweiten Wurfs angibt.")
]
#only("2-")[
- #text(weight: "bold")[Ergebnis:]

Paar $(a, b)$ wo $a,b in {K,Z}$
]
#only("3")[
#voiceover("Der Ereignisraum enthält alle möglichen Ergebnisse. In diesem Fall sind das K K, K Z, Z K und Z Z.")
]
#v(40pt)
#only("3-")[
- #text(weight: "bold")[Ereignisraum]:
$Omega = {(K, K), (K, Z),$
$ (Z, K), (Z, Z)} $
]
]
#slide()[
#only("1")[
#voiceover("Jetzt bist du an der Reihe:")
]
#only("1-")[
#text(size: 26pt, weight: "bold")[₡ Dreimaliger Münzwurf ₡]
#v(40pt)
]
#only("2")[
#voiceover("Überlege, wie der Ereignisraum für den dreimaligen Münzwurf aussieht. Ein Ergebnis besteht hier aus einem Tripel von K oder Z, das die Ergebnisse des ersten, zweiten und dritten Wurfs angibt.")
]
#only("2-")[
$->$ Wie sieht der #text(weight: "bold")[Ereignisraum $Omega$] für den dreimaligen Münzwurf aus?
]
#only("3")[
#voiceover("Schreibe den Ereignisraum als Menge aller möglichen Ergebnisse auf, so wie wir es für den zweimaligen Münzwurf gemacht haben.")
]
#v(40pt)
#only("3-")[
#text(weight: "bold")[Tipp]: Ein Ergebnis ist ein Tripel $(a, b, c)$, , wobei $a,b, c in {K,Z}$]
]

#questionDef(
  questionText: "Was ist der Ereignisraum beim dreimaligen Münzwurf?",
  // use latex!
  answerOptions: ("$Omega = {(K,K,K), (K,K,Z),(K,Z,K), (K,Z,Z), (Z,K,K),(Z,K,Z), (Z,Z,K), (Z,Z,Z)}$ oder eine äquivalente Aussage.", "Die Antwort ist falsch."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)