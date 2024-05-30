#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating pOH]
// The title "Calculating pOH" is shown on this slide
#v(40pt) 
#only("1-")[What is the formula to calculate pOH from hydroxide ion concentration?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) pOH = log[OH-]]  
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) pOH = -log[OH-]]
// Answer option b) is shown from slide 3 onward  
#v(10pt)
#only("4-")[c) pOH = 14 - log[OH-]]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) pOH = [OH-]]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on calculating pOH. What is the formula to calculate pOH from hydroxide ion concentration?")]
#only("2")[#voiceover("Is it pOH equals log of the hydroxide ion concentration,")]  
#only("3")[#voiceover("or is it pOH equals negative log of the hydroxide ion concentration,")]
#only("4")[#voiceover("or maybe pOH equals 14 minus log of the hydroxide ion concentration,")]
#only("5")[#voiceover("or is it simply pOH equals the hydroxide ion concentration?")]
]#questionDef(
questionText: "What is the formula to calculate pOH from hydroxide ion concentration?",
answerOptions: ("$pOH = \log[OH^-]$", "$pOH = -\log[OH^-]$", "$pOH = 14 - \log[OH^-]$", "$pOH = [OH^-]$"),
correctAnswerIndex: 1
)