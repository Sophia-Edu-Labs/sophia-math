#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übungsfrage]
#v(40pt)
#only("1-")[Verwende die formale Definition der Divergenz gegen Unendlich, um zu beweisen, dass die Folge $a_n = n$ gegen Unendlich divergiert.]
#only("1")[
#voiceover("Verwende die formale Definition der Divergenz gegen Unendlich, um zu beweisen, dass die Folge a Index n gleich n gegen Unendlich divergiert.")
]
]#questionDef(
questionText: "Verwende die formale Definition der Divergenz gegen Unendlich, um zu beweisen, dass die Folge $a_n = n$ gegen Unendlich divergiert.",
answerOptions: ("Korrekte Beweisführung, die zeigt, dass für jedes $M > 0$ ein $N$ existiert, so dass für alle $n \geq N$, $a_n > M$.", "Falscher oder unvollständiger Beweis."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)