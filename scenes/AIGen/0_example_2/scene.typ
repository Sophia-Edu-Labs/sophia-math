#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

// #slide()[

// #only("1")[
//   #voiceover("The task we need to solve is computing the derivative of the function")
// ]
// Compute the Derivative of
// #v(40pt)
// #only("2-")[#text()[$ f(x) = x^3" ln"(x) - 1/3 x^3 $]]
// #only("2")[
//   #voiceover("f of x equals x cubed ln of x minus one third x cubed.")
// ]
// ]

// #slide()[
// #only("1")[
//   #voiceover("Our approach will be to use the usual rules for computing derivatives. We will use the product rule for the first element of the subtraction,")
// ]
// #only("2")[
//   #voiceover(" and the power rule for the second. Let's get started!.")
// ]
// #text(size: 30pt, weight: "bold")[Approach]
// #v(40pt)
//     #only("1-")[- Product rule]
//     #only("2-")[- Power rule]
// ]


// #slide()[
// #text(size: 30pt, weight: "bold")[Step by Step Solution]
// #v(40pt)
// #only("1-")[#only("1")[$f(x) = x^3"ln(x)" - 1/3x^3$]#only("2-4")[$f(x) = $#box(fill: aqua)[$x^3"ln(x)"$]$- 1/3x^3$]#only("5-")[$f(x) = x^3"ln(x)" - 1/3x^3$]]
// #only("1")[#voiceover("We start with the function f of x equals x cubed ln of x minus one third x cubed.")]
// // #only("2-")[#place(move(dx: 80pt, dy: -10pt, [#circle(fill: rgb("#eb5a4f"),radius: 4pt, stroke: 0pt)]))]
// #v(10pt)
// #only("2")[#voiceover("Since x cubed ln of x is a product of two functions, we need to")]
// #only("3-")[#align(center)[#text(fill:aqua)[⇓ Product Rule]]]
// #only("3")[#voiceover("apply the product rule here.")]
// #v(10pt)
// #only("4-")[$f'(x) = 3x^2"ln(x)" + x^3 dot 1/x$]#only("5-")[$ - x^2$]
// #only("4")[#voiceover("The derivative of x cubed ln of x is 3x squared ln of x plus x cubed times the derivative of ln of x, which is 1 over x. The derivative of one third x cubed is")]
// #only("5")[#voiceover("x squared, so we need to subtract that from the derivative of x cubed ln of x. Now we need")]
// #v(10pt)
// #only("6-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]
// #only("6")[#voiceover(" to simplify. The first thing we can do is turn the x cubed times 1 over x into just x squared.")]
// #v(10pt)
// #only("7")[$f'(x) = 3x^2"ln(x)" + x^2 - x^2$]
// #only("7")[#voiceover("And then, we see that the two x squared terms cancel out. ")]
// #v(10pt)
// #only("8-")[$f'(x) = 3x^2"ln(x)"$]
// #only("8")[#voiceover("So the derivative we're looking for is 3x squared ln of x.")]
// ]
// ]



// #slide()[

// #only("1")[
//   #voiceover("The task we need to solve is computing the derivative of the function")
// ]
// Compute the Derivative of
// #v(40pt)
// #only("2-")[#text()[$ f(x) = x^3" ln"(x) - 1/3 x^3 $]]
// #only("2")[
//   #voiceover("f of x equals x cubed ln of x minus one third x cubed.")
// ]
// ]

// #slide()[
// #only("1")[
//   #voiceover("Our approach will be to use the usual rules for computing derivatives. We will use the product rule for the first element of the subtraction,")
// ]
// #only("2")[
//   #voiceover(" and the power rule for the second. Let's get started!.")
// ]
// #text(size: 30pt, weight: "bold")[Approach]
// #v(40pt)
//     #only("1-")[- Product rule]
//     #only("2-")[- Power rule]
// ]


// #slide()[
// #text(size: 30pt, weight: "bold")[Step by Step Solution]
// #v(40pt)
// #only("1")[$f(x) = x^3"ln(x)" - 1/3x^3$]
// #only("1")[#voiceover("We start with the function f of x equals x cubed ln of x minus one third x cubed.")]
// #v(10pt)
// #only("2")[#voiceover("Since x cubed ln of x is a product of two functions, we need to")]
// #only("3-")[#align(center)[#text(fill:aqua)[⇓ Product Rule]]]
// #only("3")[#voiceover("apply the product rule here.")]
// #v(10pt)
// #only("4-")[$f'(x) = 3x^2"ln(x)" + x^3 dot 1/x$]#only("5-")[$ - x^2$]
// #only("4")[#voiceover("The derivative of x cubed ln of x is 3x squared ln of x plus x cubed times the derivative of ln of x, which is 1 over x. The derivative of one third x cubed is")]
// #only("5")[#voiceover("x squared, so we need to subtract that from the derivative of x cubed ln of x. Now we need")]
// #v(10pt)
// #only("6-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]
// #only("6")[#voiceover(" to simplify. The first thing we can do is turn the x cubed times 1 over x into just x squared.")]
// #v(10pt)
// #only("7")[$f'(x) = 3x^2"ln(x)" + x^2 - x^2$]
// #only("7")[#voiceover("And then, we see that the two x squared terms cancel out. ")]
// #v(10pt)
// #only("8-")[$f'(x) = 3x^2"ln(x)"$]
// #only("8")[#voiceover("So the derivative we're looking for is 3x squared ln of x.")]
// ]
// ]


#slide()[

#only("1")[
#voiceover("Die Aufgabe, die wir lösen müssen, ist die Berechnung der Ableitung der Funktion")
]
Berechne die Ableitung von
#v(40pt)
#only("2-")[#text()[$ f(x) = e^{2x^2} - 4e^x + 4 $]]
#only("2")[
#voiceover("f von x gleich e hoch zwei x Quadrat minus vier e hoch x plus vier.")
]
]

#slide()[
#only("1")[
#voiceover("Um diese Aufgabe zu lösen, nutzen wir die Kettenregel und die Regel für die Ableitung der Exponentialfunktion.")
]
#only("2")[
#voiceover("Beginnen wir mit dem Lösungsprozess!")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- Kettenregel]
#only("2-")[- Regel für die Ableitung der Exponentialfunktion]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = e^{2x^2} - 4e^x + 4$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich e hoch zwei x Quadrat minus vier e hoch x plus vier.")]
#v(10pt)
#only("2")[#voiceover("Um die Ableitung von e hoch zwei x Quadrat zu finden, müssen wir")]
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Kettenregel]]]
#only("3")[#voiceover("die Kettenregel anwenden.")]
#v(10pt)
#only("4-")[$f'(x) = 4x dot e^{2x^2} - 4e^x$]
#only("4")[#voiceover("Die Ableitung von e hoch zwei x Quadrat ist vier x mal e hoch zwei x Quadrat. Die Ableitung von minus vier e hoch x ist minus vier e hoch x. Und die Ableitung von plus vier ist null.")]
#v(10pt)
#only("5-")[$f'(x) = 4x dot e^{2x^2} - 4e^x$]
#only("5")[#voiceover("Die endgültige Ableitung der Funktion ist also vier x mal e hoch zwei x Quadrat minus vier e hoch x.")]
]
]