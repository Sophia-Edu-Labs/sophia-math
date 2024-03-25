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
#align(center)[#text()[$ f(x) = (x-2)^2 - 5 $]]
]
#only("2")[
#voiceover("f von x gleich Klammer x minus zwei Klammer hoch zwei minus fünf.")
]

#v(20pt)

#only("3")[
#voiceover("Bestimme die Extremstelle, oder die Extremstellen der Funktion f und gib jeweils an, ob es sich um ein Maximum oder Minimum handelt.")
]

#only("4")[
#voiceover("Überlege dazu, wie du mit Hilfe der ersten und zweiten Ableitung die Extremstelle und ihre Art bestimmen kannst.")
]

#v(30pt)

#only("4")[
Extremstelle:
#v(10pt)
x = ...
]

#v(20pt)
]

#questionDef(
questionText: "Bestimme die Extremstelle der Funktion $f(x) = (x-2)^2 - 5$ und gib an, ob es sich um ein Maximum oder Minimum handelt.", 
answerOptions: (
"x = 2 (globales Minimum)", 
"Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)