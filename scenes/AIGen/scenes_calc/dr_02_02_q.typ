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
#align(center)[#text()[$ f(x) = ln(4-x) + 1/x $]]
]

#only("2")[
#voiceover("f von x gleich Logarithmus von 4 minus x plus 1 durch x.")
]

#v(20pt)

#only("3")[
#voiceover("Bestimme den Definitionsbereich der Funktion f.")
]

#only("4")[
#voiceover("Überlege, für welche Werte von x die Funktion nicht definiert ist. Das sind Werte, die nicht im Definitionsbereich enthalten sein dürfen.")
]

#v(30pt)

#only("4")[
$ D = \{x ∈ RR | ... \} $
]

#v(20pt)

]

#questionDef(
questionText: "Bestimme den Definitionsbereich von $f(x) = ln(4-x) + 1/x$.",
answerOptions: ("D = {x ∈ RR | x < 4, x ≠ 0} oder eine äquivalente Aussage. Dabei muss nur der Inhalt stimmen, die Schreibweise ist nicht wichtig.", "Die Antwort ist falsch."), 
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)
