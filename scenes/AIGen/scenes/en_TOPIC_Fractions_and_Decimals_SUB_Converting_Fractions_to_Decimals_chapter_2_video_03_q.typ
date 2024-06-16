#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
#only("1-")[What is $625/1000$ as a decimal?]
#v(40pt)
#only("2-")[a) $0.0625$]
#v(10pt)
#only("3-")[b) $0.625$]
#v(10pt)
#only("4-")[c) $6.25$]
#v(10pt)
#only("5-")[d) $62.5$]
#only("1")[#voiceover("Let's test your knowledge on converting fractions to decimals. What is six hundred twenty-five over one thousand as a decimal?")]
#only("2")[#voiceover("Is it zero point zero six two five,")]
#only("3")[#voiceover("or is it zero point six two five,")]
#only("4")[#voiceover("or maybe six point two five,")]
#only("5")[#voiceover("or is it sixty-two point five?")]
]

//Type: MC 
#questionDef( 
questionText: "What is $\frac{625}{1000}$ as a decimal?", 
answerOptions: ("$0.0625$", "$0.625$", "$6.25$", "$62.5$"),
correctAnswerIndex: 1 
)