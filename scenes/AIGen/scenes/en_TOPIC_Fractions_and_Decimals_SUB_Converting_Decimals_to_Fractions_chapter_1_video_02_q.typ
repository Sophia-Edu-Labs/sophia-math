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
#only("1-")[What fraction is $0.3$ equal to?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $3/1$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $3/10$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $1/3$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $3/100$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on converting decimals to fractions. What fraction is zero point three equal to?")]
#only("2")[#voiceover("Is it three over one,")]
#only("3")[#voiceover("or is it three over ten,")]
#only("4")[#voiceover("or maybe one third,")]
#only("5")[#voiceover("or is it three over one hundred?")]
]

//Type: MC 
#questionDef( 
questionText: "What fraction is $0.3$ equal to?", 
answerOptions: ("$\frac{3}{1}$", "$\frac{3}{10}$", "$\frac{1}{3}$", "$\frac{3}{100}$"),
correctAnswerIndex: 1 
)