#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übungsfrage]
#v(40pt)
#only("1-")[Verwenden Sie die formale Definition der Divergenz gegen unendlich, um zu beweisen, dass die Folge $a_n = n$ gegen unendlich divergiert.]
#only("1")[
#voiceover("Verwenden Sie die formale Definition der Divergenz gegen unendlich, um zu beweisen, dass die Folge a sub n gleich n gegen unendlich divergiert.")
]
]#questionDef(
questionText: "Verwenden Sie die formale Definition der Divergenz gegen unendlich, um zu beweisen, dass die Folge $a_n = n$ gegen unendlich divergiert.",
answerOptions: ("Korrekte Beweisführung, die zeigt, dass für jedes $M > 0$ ein $N$ existiert, so dass für alle $n \geq N$ $a_n > M$ gilt.", "Falscher oder unvollständiger Beweis."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)