#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions]
// The title "Inverse Functions" is shown on this slide
#v(40pt)
#only("1-")[If $f(x)$ and $g(x)$ are inverse functions, what is true about their domains and ranges?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) They are the same]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) They are swapped]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) They are complementary]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) They are unrelated]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's consider the following question about inverse functions. If f of x and g of x are inverse functions, what is true about their domains and ranges?")]
#only("2")[#voiceover("Are the domains and ranges of inverse functions the same,")]
#only("3")[#voiceover("or are they swapped,")]
#only("4")[#voiceover("or maybe they are complementary,")]
#only("5")[#voiceover("or are they unrelated?")]
]#questionDef(
questionText: "If $f(x)$ and $g(x)$ are inverse functions, what is true about their domains and ranges?",
answerOptions: ("They are the same", "They are swapped", "They are complementary", "They are unrelated"),
correctAnswerIndex: 1,
)