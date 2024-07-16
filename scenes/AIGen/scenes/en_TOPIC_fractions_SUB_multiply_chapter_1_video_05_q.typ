#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
// The title "Multiplying Fractions" is shown on this slide
#v(40pt)
#only("1-")[Let's solve the following multiplication of fractions:]
// Introduction statement is shown from slide 1 onward
#v(20pt)
#only("2-")[$frac(5,6) dot frac(6,7)$]
// The multiplication problem is shown from slide 2 onward
#v(20pt)
#only("3-")[Which of the following is the correct answer?]
// The question is shown from slide 3 onward
#v(20pt)
#only("4-")[a) $frac(30,42)$]
// Answer option a) is shown from slide 4 onward
#v(10pt)
#only("5-")[b) $frac(36,42)$]
// Answer option b) is shown from slide 5 onward
#v(10pt)
#only("6-")[c) $frac(42,42)$]
// Answer option c) is shown from slide 6 onward
#v(10pt)
#only("7-")[d) $frac(30,36)$]
// Answer option d) is shown from slide 7 onward
#only("1")[#voiceover("Let's solve the following multiplication of fractions:")]
#only("2")[#voiceover("Multiply five sixths by six sevenths.")]
#only("3")[#voiceover("Which of the following is the correct answer?")]
#only("4")[#voiceover("Is it option a: thirty forty-seconds,")]
#only("5")[#voiceover("option b: thirty-six forty-seconds,")]
#only("6")[#voiceover("option c: forty-two forty-seconds,")]
#only("7")[#voiceover("or option d: thirty thirty-sixths?")]
]

//Type: MC 
#questionDef( 
questionText: "Multiply $\frac{5}{6}$ by $\frac{6}{7}$.", 
answerOptions: ("$\frac{30}{42}$", "$\frac{36}{42}$", "$\frac{42}{42}$", "$\frac{30}{36}$"),
correctAnswerIndex: 0 
)