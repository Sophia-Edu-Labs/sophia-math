#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Decimals to Fractions]
// The title "Converting Decimals to Fractions" is shown on this slide
#v(40pt)
#only("1-")[What fraction is $0.05$ equal to?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $5/1000$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $5/100$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $5/10$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $5/1$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on converting decimals with leading zeros to fractions. What fraction is zero point zero five equal to?")]
#only("2")[#voiceover("Is it five over one thousand,")]
#only("3")[#voiceover("or is it five over one hundred,")]
#only("4")[#voiceover("or maybe five over ten,")]
#only("5")[#voiceover("or is it five over one?")]
]

//Type: MC 
#questionDef( 
questionText: "What fraction is $0.05$ equal to?", 
answerOptions: ("$\frac{5}{1000}$", "$\frac{5}{100}$", "$\frac{5}{10}$", "$\frac{5}{1}$"),
correctAnswerIndex: 1 
)