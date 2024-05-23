#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#text(size: 30pt, weight: "bold")[Konvergenz einer Folge]

#v(40pt)

#only("1-")[Folge: $a_n = 1/n$]

#v(20pt)

#only("2-")[Grenzwert: $L = 0$]

#v(20pt)

#only("3-")[Übung: Beweisen Sie, dass $a_n$ gegen $L$ konvergiert, indem Sie die formale Definition der Konvergenz verwenden.]

#only("1")[
#voiceover("Betrachten Sie die Folge a sub n gleich 1 durch n.")
]

#only("2")[
#voiceover("Wir möchten zeigen, dass diese Folge gegen den Grenzwert L gleich 0 konvergiert.")
]

#only("3")[
#voiceover("Ihre Aufgabe ist es, zu beweisen, dass a sub n gegen L konvergiert, indem Sie die formale Definition der Konvergenz verwenden. Viel Glück!")
]

]#questionDef(
questionText: "Beweisen Sie, dass die Folge $a_n = \frac{1}{n}$ gegen $L = 0$ konvergiert, indem Sie die formale Definition der Konvergenz verwenden.",
answerOptions: ("Ein korrekter Beweis unter Verwendung der formalen Definition der Konvergenz, der zeigt, dass für jedes $\epsilon > 0$ ein $N$ existiert, so dass für alle $n \geq N$ $|a_n - L| < \epsilon$ gilt.", "Der Beweis ist falsch oder unvollständig."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)