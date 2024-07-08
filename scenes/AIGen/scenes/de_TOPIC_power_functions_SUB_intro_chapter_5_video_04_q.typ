#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktion Auswertung]
#v(40pt)

#only("1-")[Betrachte die Potenzfunktion $f(x) = 8 / x^2$]
#v(20pt)

#only("2-")[Berechne $f(1/2)$]

#only("1")[
#voiceover("Lass uns die Auswertung einer Potenzfunktion üben. Betrachte die Funktion f von x gleich 8 geteilt durch x Quadrat.")
]

#only("2")[
#voiceover("Deine Aufgabe ist es, f von ein halb zu berechnen. Mit anderen Worten, was ist der Wert dieser Funktion, wenn x gleich ein halb ist?")
]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist der Wert von $f\left(\frac{1}{2}\right)$ für die Potenzfunktion $f(x) = \frac{8}{x^2}$?", 
answerOptions: ("$f\left(\frac{1}{2}\right) = 32$", "$f\left(\frac{1}{2}\right) = -60$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f\left(\frac{1}{2}\right) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)