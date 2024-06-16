#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Numbers Greater than 1 to Fractions]
// The title "Converting Numbers Greater than 1 to Fractions" is shown on this slide
#v(40pt)
#only("1-")[What fraction is $2.5$ equal to?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $25/10$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $2.5/1$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $5/2$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $25/100$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on converting numbers greater than one to fractions. What fraction is two point five equal to?")]
#only("2")[#voiceover("Is it twenty-five over ten,")]
#only("3")[#voiceover("or is it two point five over one,")]
#only("4")[#voiceover("or maybe five over two,")]
#only("5")[#voiceover("or is it twenty-five over one hundred?")]
]

//Type: MC 
#questionDef( 
questionText: "What fraction is $2.5$ equal to?", 
answerOptions: ("$\frac{25}{10}$", "$\frac{2.5}{1}$", "$\frac{5}{2}$", "$\frac{25}{100}$"),
correctAnswerIndex: 2 
)