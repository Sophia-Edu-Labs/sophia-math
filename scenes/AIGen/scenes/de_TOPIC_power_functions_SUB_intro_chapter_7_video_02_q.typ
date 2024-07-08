#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktion Auswertung]
#v(40pt)

#only("1-")[Betrachte die Potenzfunktion $f(x) = 7x^2$]
#v(20pt)

#only("2-")[Finde den Wert von $f(3)$]

#only("1")[
#voiceover("Lass uns üben, eine Potenzfunktion auszuwerten. Betrachte die Funktion f von x gleich sieben mal x Quadrat.")
]

#only("2")[
#voiceover("Deine Aufgabe ist es, den Wert von f von 3 zu finden. Mit anderen Worten, was ist der Output, wenn wir 3 in diese Funktion eingeben?")
]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert von $f(3)$ für die Potenzfunktion $f(x) = 7x^2$?", 
answerOptions: ("$f(3) = 63$", "$f(3) = -122$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(3) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)