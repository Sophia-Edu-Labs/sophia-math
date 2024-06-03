#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias]
#v(40pt)
#only("1-")[What is anchoring bias?]
#v(40pt)
#only("2-")[a) Relying on multiple sources of information 🗃️]
#v(10pt)
#only("3-")[b) Relying too heavily on the first piece of information 🎯]
#v(10pt) 
#only("4-")[c) Ignoring initial information 🙈]
#v(10pt)
#only("5-")[d) None of the above ❌]

#only("1")[#voiceover("Let's test your knowledge on anchoring bias. What is anchoring bias?")]
#only("2")[#voiceover("Is it relying on multiple sources of information,")]  
#only("3")[#voiceover("relying too heavily on the first piece of information,")]
#only("4")[#voiceover("ignoring initial information,")]
#only("5")[#voiceover("or none of the above?")]
]#questionDef(
questionText: "What is anchoring bias?",
answerOptions: ("Relying on multiple sources of information", "Relying too heavily on the first piece of information", "Ignoring initial information", "None of the above"),
correctAnswerIndex: 1
)