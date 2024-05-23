#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#text(size: 30pt, weight: "bold")[Inverse einer Matrix]
// Der Titel "Inverse einer Matrix" wird auf allen Folien angezeigt

#v(40pt)

#only("1-")[Gegeben sei die Matrix $mat(1, 2; 3, 4)$]
// Die gegebene Matrix wird ab Folie 1 angezeigt

#v(40pt)

#only("2-")[Finden Sie die Inverse dieser Matrix.]
// Die Frage "Finden Sie die Inverse dieser Matrix." wird ab Folie 2 angezeigt

#only("1")[
#voiceover("Betrachten Sie die folgende Matrix: 1, 2; 3, 4.")
]

#only("2")[
#voiceover("Ihre Aufgabe ist es, die Inverse dieser Matrix zu finden.")
]

]#questionDef(
questionText: "Was ist die Inverse der Matrix $\begin{pmatrix} 1 & 2 \\\\ 3 & 4 \end{pmatrix}$?",
answerOptions: ("Die Inverse ist $\begin{pmatrix} -2 & 1 \\\\ 1.5 & -0.5 \end{pmatrix}$, oder eine äquivalente Matrix.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)