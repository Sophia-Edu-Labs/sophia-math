#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure]
// The title "Water Pressure" is shown on this slide
#v(40pt)
#only("1-")[A faucet is located 10 m below the water surface in a reservoir. What is the water pressure at the faucet? 🚰]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 0.01 bar]
// Answer option a) is shown from slide 2 onward 
#v(10pt)
#only("3-")[b) 0.1 bar]  
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) 1 bar]
// Answer option c) is shown from slide 4 onward
#v(10pt) 
#only("5-")[d) 10 bar]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on water pressure. A faucet is located 10 meters below the water surface in a reservoir. What is the water pressure at the faucet?")]
#only("2")[#voiceover("Is it 0.01 bar,")]  
#only("3")[#voiceover("or is it 0.1 bar,")] 
#only("4")[#voiceover("or maybe 1 bar,")]
#only("5")[#voiceover("or is it 10 bar?")]
]#questionDef(
questionText: "A faucet is located $10 \, \text{m}$ below the water surface in a reservoir. What is the water pressure at the faucet?",
answerOptions: ("$0.01 \, \text{bar}$", "$0.1 \, \text{bar}$", "$1 \, \text{bar}$", "$10 \, \text{bar}$"),
correctAnswerIndex: 2
)