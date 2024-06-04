#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Representativeness Heuristic]
#v(40pt)
#only("1-")[What is the representativeness heuristic? 🤔]
#v(40pt)
#only("2-")[a) Judging probability based on resemblance 🎭]
#v(10pt)
#only("3-")[b) Judging probability based on statistical data 📊]
#v(10pt)
#only("4-")[c) Ignoring similarities 🙈]
#v(10pt)
#only("5-")[d) None of the above ❌]
#only("1")[#voiceover("Let's test your knowledge on the representativeness heuristic. What is it?")]
#only("2")[#voiceover("Is it judging probability based on resemblance,")]
#only("3")[#voiceover("or judging probability based on statistical data,")]
#only("4")[#voiceover("or ignoring similarities,")]
#only("5")[#voiceover("or none of the above?")]
]#questionDef(
questionText: "What is the representativeness heuristic?",
answerOptions: ("Judging probability based on resemblance", "Judging probability based on statistical data", "Ignoring similarities", "None of the above"),
correctAnswerIndex: 0,
)