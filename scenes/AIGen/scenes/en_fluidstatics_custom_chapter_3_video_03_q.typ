#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Blood Pressure 🫀]
#v(40pt)
#only("1-")[Why is blood pressure higher in the feet compared to the head? 🤔]
#v(40pt)
#only("2-")[a) Gravity 🌍]
#v(10pt) 
#only("3-")[b) Heartbeat 💓]
#v(10pt)
#only("4-")[c) Respiration 🫁]
#v(10pt)
#only("5-")[d) Muscle contraction 💪]
#only("1")[#voiceover("Let's test your knowledge on blood pressure. Why is blood pressure higher in the feet compared to the head?")]
#only("2")[#voiceover("Is it due to gravity,")]  
#only("3")[#voiceover("or is it because of the heartbeat,")]
#only("4")[#voiceover("or maybe it's due to respiration,")]
#only("5")[#voiceover("or is it caused by muscle contraction?")]
]#questionDef(
questionText: "Why is blood pressure higher in the feet compared to the head?",
answerOptions: ("Gravity", "Heartbeat", "Respiration", "Muscle contraction"),
correctAnswerIndex: 0)