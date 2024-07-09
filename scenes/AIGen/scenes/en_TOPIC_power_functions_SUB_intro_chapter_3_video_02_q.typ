#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Effect of Negative Coefficient on Power Functions]
#v(40pt)

#only("1-")[Consider the power function: $f(x) = a x^b$]
#v(20pt)

#only("2-")[What effect does a #text(fill: red)[negative coefficient $a$] have on the graph?]
#v(20pt)

#only("3-")[a) Reflects across the y-axis]
#v(10pt)
#only("4-")[b) Reflects across the x-axis]
#v(10pt)
#only("5-")[c) Translates up]
#v(10pt)
#only("6-")[d) Translates down]

#only("1")[#voiceover("Let's explore the effect of coefficients on power functions. Consider the general form of a power function: f of x equals a times x to the power of b.")]

#only("2")[#voiceover("Our question today is: What effect does a negative coefficient a have on the graph of this function?")]

#only("3")[#voiceover("Is it option A: The graph reflects across the y-axis?")]

#only("4")[#voiceover("Or option B: The graph reflects across the x-axis?")]

#only("5")[#voiceover("Maybe option C: The graph translates upward?")]

#only("6")[#voiceover("Or lastly, option D: The graph translates downward?")]
]

//Type: MC 
#questionDef( 
questionText: "What effect does a negative coefficient $a$ have on the graph of the power function $f(x) = ax^b$?", 
answerOptions: ("$\\text{Reflects across the y-axis}$", "$\\text{Reflects across the x-axis}$", "$\\text{Translates up}$", "$\\text{Translates down}$"),
correctAnswerIndex: 1 
)