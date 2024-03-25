#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[

#only("1")[
#voiceover("Betrachte die Funktion")
]

#text(size: 30pt, weight: "bold")[Funktion]
#v(20pt)

#only("2-")[
#align(center)[#text()[$ f(x) = x^3 - 6x^2 + 9x + 1 $]]
]
#only("2")[
#voiceover("f von x gleich x hoch drei minus sechs x Quadrat plus neun x plus eins.")
]

#v(20pt)

#only("3")[
#voiceover("Bestimme alle Extremstellen der Funktion f und gib an, ob es sich um Maxima oder Minima handelt.")
]

#only("4")[
#voiceover("Überlege dazu, wie du mit Hilfe der ersten und zweiten Ableitung die Extremstellen und ihre Art bestimmen kannst.")
]

#v(30pt)

#only("4")[
Extremstellen:
#v(10pt)
x1 = ...
#v(5pt) 
x2 = ... 
]

#v(20pt)
]

#questionDef(
questionText: "Bestimme alle Extremstellen der Funktion $f(x) = x^3 - 6x^2 + 9x + 1$ und gib an, ob es sich um Maxima oder Minima handelt.", 
answerOptions: (
"x1 = 1 (lokales Maximum), x2 = 3 (lokales Minimum)", 
"Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)
