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
#align(center)[#text()[$ h(x) = sqrt(3x+9) - 1/(x^2-4) $]]
]
#only("2")[
#voiceover("h von x gleich Wurzel aus 3x plus 9 minus 1 durch x Quadrat minus 4.")
]
#v(20pt)
#only("3")[
#voiceover("Bestimme den Definitionsbereich der Funktion h.")
]
#only("4")[
#voiceover("Überlege, für welche Werte von x die Funktion nicht definiert ist. Das sind Werte, die nicht im Definitionsbereich enthalten sein dürfen.")
]
#v(30pt)
#only("4")[
$ D = {x ∈ RR | ... } $
]
#v(20pt)
]
#questionDef(
questionText: "Bestimme den Definitionsbereich von $h(x) = sqrt(3x+9) - 1/(x^2-4)$.",
answerOptions: ("D = {x ∈ RR | x ≥ -3, x ≠ -2, x ≠ 2} oder eine äquivalente Aussage. Dabei muss nur der Inhalt stimmen, die Schreibweise ist nicht wichtig.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)