#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Area Between Two Curves]
#v(40pt)
#only("1-")[What does the area between two curves represent?]
#v(40pt)
#only("2-")[a) The sum of the functions]
#v(10pt)
#only("3-")[b) The difference of the functions]
#v(10pt)
#only("4-")[c) The product of the functions]
#v(10pt)
#only("5-")[d) The region enclosed by the functions]

#only("1")[#voiceover("Consider two functions, $f(x)$ and $g(x)$. What does the area between these two curves represent?")]
#only("2")[#voiceover("Is it the sum of the two functions, $f(x) + g(x)$?")]
#only("3")[#voiceover("Or is it the difference of the two functions, $f(x) - g(x)$?")]
#only("4")[#voiceover("Maybe it's the product of the two functions, $f(x) * g(x)$?")]
#only("5")[#voiceover("Or does it represent the region enclosed by the functions $f(x)$ and $g(x)$?")]
]

#questionDef(
questionText: "What does the area between two curves represent?",
answerOptions: ("The sum of the functions", "The difference of the functions", "The product of the functions", "The region enclosed by the functions"),
correctAnswerIndex: 3
)