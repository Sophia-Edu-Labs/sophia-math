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
#only("1-")[What fraction is $0.2$ equal to?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $2/1$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $2/10$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $2/100$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $1/2$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on converting decimals to fractions. What fraction is zero point two equal to?")]
#only("2")[#voiceover("Is it two over one,")]
#only("3")[#voiceover("or is it two over ten,")]
#only("4")[#voiceover("or maybe two over one hundred,")]
#only("5")[#voiceover("or is it one half?")]
]

//Type: MC 
#questionDef( 
questionText: "What fraction is $0.2$ equal to?", 
answerOptions: ("$\frac{2}{1}$", "$\frac{2}{10}$", "$\frac{2}{100}$", "$\frac{1}{2}$"),
correctAnswerIndex: 1 
)