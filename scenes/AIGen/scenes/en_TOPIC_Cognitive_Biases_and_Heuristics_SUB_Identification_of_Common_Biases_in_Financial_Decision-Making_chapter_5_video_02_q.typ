#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior 🐑]
#v(40pt)
#only("1-")[What is herd behavior?]
#v(40pt)
#only("2-")[a) Making decisions independently 🙋‍♂️]
#v(10pt)
#only("3-")[b) Following the actions of a larger group 👥]
#v(10pt)
#only("4-")[c) Ignoring group actions 🙉]
#v(10pt)
#only("5-")[d) None of the above ❌]
#only("1")[#voiceover("Let's test your understanding of herd behavior. What exactly is herd behavior?")]
#only("2")[#voiceover("Is it making decisions independently,")]
#only("3")[#voiceover("or is it following the actions of a larger group,")]
#only("4")[#voiceover("or perhaps ignoring group actions,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is herd behavior?",
answerOptions: ("Making decisions independently", "Following the actions of a larger group", "Ignoring group actions", "None of the above"),
correctAnswerIndex: 1,
)