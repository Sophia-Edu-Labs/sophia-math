#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Prismas mit einem zylindrischen Loch]
  #v(40pt)

  #only("1-")[
    Betrachte ein rechteckiges Prisma mit den Abmessungen:
    - Länge: 12 cm
    - Breite: 8 cm
    - Höhe: 5 cm
  ]

  #only("2-")[
    Ein zylindrisches Loch wird durch sein Zentrum gebohrt:
    - Radius: 2 cm
    - Höhe: 5 cm (gleich der Höhe des Prismas)
  ]

  #only("3-")[
    #text(fill: blue)[Frage: Was ist die gesamte Oberfläche?]
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem zur Oberfläche betrachten. Wir haben ein rechteckiges Prisma mit bestimmten Abmessungen.")
  ]

  #only("2")[
    #voiceover("Stell dir nun vor, dass ein zylindrisches Loch durch das Zentrum dieses Prismas gebohrt wird.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieses modifizierten Prismas zu berechnen. Überlege, welche Flächen zur Gesamtfläche beitragen und wie das Loch die Berechnung beeinflusst.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Ein rechteckiges Prisma $(12 \\text{ cm} \\times 8 \\text{ cm} \\times 5 \\text{ cm})$ hat ein zylindrisches Loch (Radius $2 \\text{ cm}$, Höhe $5 \\text{ cm}$) durch sein Zentrum gebohrt. Finde die gesamte Oberfläche.", 
answerOptions: ("$\text{Gesamte Oberfläche} = 382.68 \\text{ cm}^2$", "$\text{Gesamte Oberfläche} = -761.36 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Gesamte Oberfläche} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)