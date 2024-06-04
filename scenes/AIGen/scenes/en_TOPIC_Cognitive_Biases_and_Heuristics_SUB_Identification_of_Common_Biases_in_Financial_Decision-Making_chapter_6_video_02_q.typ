#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recency Bias 🕒]
#v(40pt)
#only("1-")[What is recency bias?]
#v(40pt)
#only("2-")[a) Weighing all events equally ⚖️]
#v(10pt)
#only("3-")[b) Weighing recent events more heavily 📈]
#v(10pt)  
#only("4-")[c) Ignoring recent events 🙈]
#v(10pt)
#only("5-")[d) None of the above ❌]
#only("1")[#voiceover("Let's test your knowledge on recency bias. What is recency bias?")]
#only("2")[#voiceover("Is it weighing all events equally,")]
#only("3")[#voiceover("or is it weighing recent events more heavily,")]  
#only("4")[#voiceover("or maybe ignoring recent events,")]
#only("5")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "What is recency bias?",
answerOptions: ("Weighing all events equally", "Weighing recent events more heavily", "Ignoring recent events", "None of the above"),
correctAnswerIndex: 1,  )