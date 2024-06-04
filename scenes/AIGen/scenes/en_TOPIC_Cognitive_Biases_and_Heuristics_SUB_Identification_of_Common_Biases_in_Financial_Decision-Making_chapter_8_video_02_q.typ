#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hindsight Bias 🤔]
#v(40pt)
#only("1-")[What is hindsight bias?]
#v(40pt)
#only("2-")[a) Predicting future events accurately 🔮]
#v(10pt)
#only("3-")[b) Seeing past events as predictable 🕰️]
#v(10pt)
#only("4-")[c) Ignoring past events 🙈]
#v(10pt)
#only("5-")[d) None of the above ❌]
#only("1")[#voiceover("Let's test your knowledge on hindsight bias. What is hindsight bias?")]
#only("2")[#voiceover("Is it predicting future events accurately,")]
#only("3")[#voiceover("or is it seeing past events as predictable,")]
#only("4")[#voiceover("or maybe ignoring past events,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is hindsight bias?",
answerOptions: ("Predicting future events accurately", "Seeing past events as predictable", "Ignoring past events", "None of the above"),
correctAnswerIndex: 1,
)