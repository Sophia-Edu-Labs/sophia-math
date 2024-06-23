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
#only("1-")[What fraction is $0.75$ equal to?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $75/10$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $75/100$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $7.5/100$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $7.5/10$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on converting decimals to fractions. What fraction is zero point seven five equal to?")]
#only("2")[#voiceover("Is it seventy-five over ten,")]
#only("3")[#voiceover("or is it seventy-five over one hundred,")]
#only("4")[#voiceover("or maybe seven point five over one hundred,")]
#only("5")[#voiceover("or is it seven point five over ten?")]
]

//Type: MC 
#questionDef( 
questionText: "What fraction is $0.75$ equal to?", 
answerOptions: ("$\frac{75}{10}$", "$\frac{75}{100}$", "$\frac{7.5}{100}$", "$\frac{7.5}{10}$"),
correctAnswerIndex: 1 
)