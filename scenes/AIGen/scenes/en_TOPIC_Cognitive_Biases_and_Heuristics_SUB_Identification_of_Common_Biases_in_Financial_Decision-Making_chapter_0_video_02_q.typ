#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Cognitive Biases 🧠]
#v(40pt)
#only("1-")[What are cognitive biases?]
#v(40pt)
#only("2-")[a) Logical fallacies 🤔]
#v(10pt)
#only("3-")[b) Systematic patterns of deviation from norm 📊]
#v(10pt)
#only("4-")[c) Random errors ❓]
#v(10pt)
#only("5-")[d) None of the above ❌]
#only("1")[#voiceover("Let's test your knowledge on cognitive biases. What are cognitive biases?")]
#only("2")[#voiceover("Are they logical fallacies,")]  
#only("3")[#voiceover("or are they systematic patterns of deviation from the norm,")]
#only("4")[#voiceover("or maybe random errors,")]
#only("5")[#voiceover("or none of the above?")]
]#questionDef(
questionText: "What are cognitive biases?", 
answerOptions: ("Logical fallacies", "Systematic patterns of deviation from norm", "Random errors", "None of the above"),
correctAnswerIndex: 1
)