#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[

#text(size: 30pt, weight: "bold")[Konvergenz einer Folge]

#v(40pt)

#only("1-")[Folge: $a_n = 1/n$]

#v(20pt)

#only("2-")[Grenzwert: $L = 0$]

#v(20pt)

#only("3-")[Übung: Beweise, dass $a_n$ gegen $L$ konvergiert, indem du die formale Definition der Konvergenz verwendest.]

#only("1")[
#voiceover("Betrachte die Folge a sub n gleich 1 durch n.")
]

#only("2")[
#voiceover("Wir möchten zeigen, dass diese Folge gegen den Grenzwert L gleich 0 konvergiert.")
]

#only("3")[
#voiceover("Deine Aufgabe ist es zu beweisen, dass a sub n gegen L konvergiert, indem du die formale Definition der Konvergenz verwendest. Viel Erfolg!")
]

]#questionDef(
questionText: "Beweise, dass die Folge $a_n = \frac{1}{n}$ gegen $L = 0$ konvergiert, indem du die formale Definition der Konvergenz verwendest.",
answerOptions: ("Ein korrekter Beweis unter Verwendung der formalen Definition der Konvergenz, der zeigt, dass für jedes $\epsilon > 0$ ein $N$ existiert, so dass für alle $n \geq N$ gilt: $|a_n - L| < \epsilon$.", "Der Beweis ist falsch oder unvollständig."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)