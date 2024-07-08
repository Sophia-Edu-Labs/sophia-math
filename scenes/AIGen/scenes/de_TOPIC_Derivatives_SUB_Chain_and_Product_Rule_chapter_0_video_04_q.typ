#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Anwendung der Kettenregel]
  #v(40pt)

  #only("1-")[
    Differenziere $f(x) = (2x + 3)^4$ mit der Kettenregel und finde $f'(1)$
  ]

  #only("1")[
    #voiceover("Lass uns die Anwendung der Kettenregel üben. Wir müssen die Funktion f von x gleich zwei x plus drei, alles hoch vier, differenzieren. Dann werden wir die Ableitung bei x gleich 1 auswerten.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Differenziere $f(x) = (2x + 3)^4$ mit der Kettenregel und finde $f'(1)$. ", 
answerOptions: ("$f'(x) = 8(2x + 3)^3$ und $f'(1) = 512$", "$f'(x) = -12(2x + 3)^-2$ und $f'(1) = -1020$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
c: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$f'(x) = \key{a}(2x + 3)^\key{b}$ und $f'(1) = \key{c}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
) 
), 
)