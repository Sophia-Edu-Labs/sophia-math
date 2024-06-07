#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Ableitungsfrage 📈]
#v(40pt)
#only("1-")[
Finde die Ableitung der folgenden Funktion:
]
#v(20pt)
#only("2-")[
$f(x) = x^5$
]
#only("1")[
#voiceover("Hier ist eine Frage für Dich:")
]
#only("2")[
#voiceover("Finde die Ableitung der Funktion f von x gleich x hoch 5.")
]
]#questionDef(
questionText: "Was ist die Ableitung der Funktion $f(x) = x^5$?",
answerOptions: ("$f'(x) = 5x^4$", "$f'(x) = x^4$"),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)