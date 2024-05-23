#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solution Set Structure]
// The title "Solution Set Structure" is shown on this slide
#v(40pt)
#only("1-")[Consider a linear system of equations.]
// The statement "Consider a linear system of equations." is shown from slide 1 onward
#v(20pt)
#only("2-")[If the rank of the coefficient matrix is equal to the rank of the augmented matrix and less than the number of variables, the solution set is:]
// The question is shown from slide 2 onward
#v(40pt)
#only("3-")[a) Unique 🎯]
// Answer option a) is shown from slide 3 onward
#v(10pt)
#only("4-")[b) Infinite ∞]
// Answer option b) is shown from slide 4 onward
#v(10pt)
#only("5-")[c) Nonexistent ∅]
// Answer option c) is shown from slide 5 onward
#v(10pt)
#only("6-")[d) None of the above 🚫]
// Answer option d) is shown from slide 6 onward
#only("1")[#voiceover("Consider a linear system of equations.")]
#only("2")[#voiceover("If the rank of the coefficient matrix is equal to the rank of the augmented matrix and less than the number of variables, what can we say about the solution set?")]
#only("3")[#voiceover("Is the solution set unique,")]
#only("4")[#voiceover("or is it infinite,")]
#only("5")[#voiceover("or is it nonexistent,")]
#only("6")[#voiceover("or is it none of the above?")]
]#questionDef(
questionText: "If the rank of the coefficient matrix is equal to the rank of the augmented matrix and less than the number of variables, the solution set is:",
answerOptions: ("Unique", "Infinite", "Nonexistent", "None of the above"),
correctAnswerIndex: 1,
)