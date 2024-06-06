#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Efficient Market Hypothesis 📈]
#v(40pt)
#only("1-")[According to EMH, asset prices \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) are random 🎲]
#v(10pt)
#only("3-")[b) reflect all available information ℹ]
#v(10pt) 
#only("4-")[c) are influenced by emotions 😀]
#v(10pt)
#only("5-")[d) are predictable 🔮]
#only("1")[#voiceover("Let's test your knowledge on the Efficient Market Hypothesis. According to EMH, asset prices blank.")]
#only("2")[#voiceover("Are they random,")]  
#only("3")[#voiceover("do they reflect all available information,")]
#only("4")[#voiceover("are they influenced by emotions,")]
#only("5")[#voiceover("or are they predictable?")]
]#questionDef(
questionText: "According to EMH, asset prices ________ .",
answerOptions: ("are random", "reflect all available information", "are influenced by emotions", "are predictable"),
correctAnswerIndex: 1,
)