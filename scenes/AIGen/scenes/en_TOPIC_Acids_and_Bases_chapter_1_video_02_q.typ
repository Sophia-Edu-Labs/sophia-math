#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Acids]
#v(40pt)
#only("1-")[Which of the following is a property of acids?]
#v(40pt)
#only("2-")[a) Bitter taste 👅]
#v(10pt)
#only("3-")[b) Conduct electricity ⚡]
#v(10pt)
#only("4-")[c) Feel slippery 🧼]
#v(10pt)
#only("5-")[d) None of the above ❌]
#only("1")[#voiceover("Let's test your knowledge on the properties of acids. Which of the following is a property of acids?")]
#only("2")[#voiceover("Do acids have a bitter taste,")]
#only("3")[#voiceover("or do they conduct electricity,")]
#only("4")[#voiceover("or maybe they feel slippery,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "Which of the following is a property of acids?",
answerOptions: ("Bitter taste", "Conduct electricity", "Feel slippery", "None of the above"),
correctAnswerIndex: 1,
)