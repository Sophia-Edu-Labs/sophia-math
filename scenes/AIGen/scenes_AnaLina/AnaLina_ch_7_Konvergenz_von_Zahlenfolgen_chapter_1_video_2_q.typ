#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Konvergenz von Zahlenfolgen]
#v(40pt)
#only("1-")[Eine Zahlenfolge konvergiert, wenn sie sich \_\_\_\_\_ nähert.]
#v(40pt)
#only("2-")[a) einem bestimmten Wert 🎯]
#v(10pt)
#only("3-")[b) unendlich vielen Werten ∞]
#v(10pt)
#only("4-")[c) null 0️⃣]
#v(10pt)
#only("5-")[d) keiner Antwort ist richtig ❌]
#only("1")[#voiceover("Eine Zahlenfolge konvergiert, wenn sie sich einem bestimmten Wert nähert.")]
#only("2")[#voiceover("Nähert sie sich einem bestimmten Wert,")]
#only("3")[#voiceover("oder nähert sie sich unendlich vielen Werten,")]
#only("4")[#voiceover("oder nähert sie sich null,")]
#only("5")[#voiceover("oder ist keine der Antworten richtig?")]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Eine Zahlenfolge konvergiert, wenn sie sich \_\_\_\_\\_ nähert.",
answerOptions: ("einem bestimmten Wert", "unendlich vielen Werten", "null", "keiner Antwort ist richtig"),
correctAnswerIndex: 0,
)