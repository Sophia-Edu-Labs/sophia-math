#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
- Ein Holzbrett schwimmt in einem mit Wasser gefüllten Eimer 🌊
]
#v(20pt)
#only("2-")[
- Ein Becher Wasser steht auf dem Brett 🥛
]
#v(20pt)
#only("3-")[
- Das Wasser aus dem Becher wird in den Eimer gegossen 🫗
]
#v(20pt)
#only("4-")[  
- Der leere Becher wird zurück auf das Brett gestellt 🥤
]
#only("1")[
#voiceover("Betrachte die folgende Situation: Ein Holzbrett schwimmt in einem mit Wasser gefüllten Eimer.")
]
#only("2")[
#voiceover("Auf dem Brett steht ein Becher, der mit Wasser gefüllt ist.")
]
#only("3")[
#voiceover("Nun wird das Wasser aus dem Becher in den Eimer gegossen.")
]
#only("4")[
#voiceover("Und der leere Becher wird zurück auf das Brett gestellt.")
]
#v(40pt)
#only("5-")[Was passiert mit dem Wasserspiegel im Eimer? 🤔]
#only("5")[
#voiceover("Was denkst du, passiert mit dem Wasserspiegel im Eimer?")
]
]#questionDef(
questionText: "Was passiert mit dem Wasserspiegel im Eimer, nachdem das Wasser aus dem Becher hineingegossen wurde und der leere Becher zurück auf das Brett gestellt wurde?",
answerOptions: ("Der Wasserspiegel bleibt gleich oder sinkt leicht, da das Wasser aus dem Becher nun im Eimer ist und der leere Becher das Brett nicht mehr belastet.", "Die Antwort ist falsch."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)