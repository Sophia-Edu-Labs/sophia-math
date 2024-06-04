#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Heißluftballonflug 🎈]
#v(40pt)
#only("1-")[
Hebe eine Gesamtmasse von 640 kg in Uster (464 m über dem Meeresspiegel)
]
#only("2-")[
- $ V = m / (rho_"Luft" - rho_"Gas") $
- $ rho_"Luft" = 1.188 $ kg/m³ 
- $ rho_"Gas" = 0.60 $ kg/m³
]
#only("1")[
#voiceover("Stelle dir einen Heißluftballonflug vor, bei dem du eine Gesamtmasse von 640 kg, einschließlich des Ballons, der Passagiere und der Gondel, in Uster, das 464 Meter über dem Meeresspiegel liegt, heben musst.")
]
#only("2")[
#voiceover("Um das minimale Volumen des Ballons zu berechnen, verwende die Formel V gleich m geteilt durch rho Luft minus rho Gas, wobei rho Luft 1.188 Kilogramm pro Kubikmeter und rho Gas 0.60 Kilogramm pro Kubikmeter beträgt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Frage ❓]
#v(40pt)
#only("1-")[
Was ist das minimale Volumen des Ballons? (Antwort in m³)
]
#only("1")[
#voiceover("Was ist das minimale Volumen des Ballons? Gib deine Antwort in Kubikmetern an.")
]
#v(40pt)
]
#questionDef(
  questionText: "Was ist das minimale Volumen des Ballons in Kubikmetern?",
  answerOptions: ("$1088$", "$500$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
      )
    ),
    answerOptionMatcher:("$\key{a}$"),
    answerOptionsTypes: (
      "a": "number"
    )
  ),
)