#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Excellent work! You've solved this problem correctly. Let's go through the solution step-by-step to understand how we arrive at the answer.")
]

#text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]

#v(40pt)

#only("2-")[#text()[$ x^2 - 6x + 9 = 0 $]]

#only("2")[
#voiceover("We start with the quadratic equation x squared minus six x plus nine equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Identifying the Quadratic Expression]

#v(40pt)

#only("1-")[- General form: $a x^2 + b x + c = 0$]
#v(20pt)
#only("2-")[- Our equation: $x^2 - 6x + 9 = 0$]
#v(20pt)
#only("3-")[- $a = 1$, $b = -6$, $c = 9$]

#only("1")[
#voiceover("First, let's identify the components of our quadratic equation. The general form of a quadratic equation is a x squared plus b x plus c equals zero.")
]

#only("2")[
#voiceover("In our case, we have x squared minus six x plus nine equals zero.")
]

#only("3")[
#voiceover("So, a equals one, b equals negative six, and c equals nine.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Factoring the Quadratic Expression]

#v(40pt)

#only("1-")[- Look for a perfect square trinomial]
#v(20pt)
#only("2-")[- $(x - 3)^2 = x^2 - 6x + 9$]

#only("1")[
#voiceover("To factor this expression, we need to recognize that it's a perfect square trinomial.")
]

#only("2")[
#voiceover("The factored form is x minus three, all squared, which expands to x squared minus six x plus nine.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving the Factored Equation]

#v(40pt)

#only("1-")[$(x - 3)^2 = 0$]
#v(20pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Take square root of both sides]]]
#v(20pt)
#only("3-")[$ x - 3 = 0 $]
#v(20pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Add 3 to both sides]]]
#v(20pt)
#only("5-")[$ x = 3 $]

#only("1")[
#voiceover("Now that we've factored the equation, we have x minus three, all squared, equals zero.")
]

#only("2")[
#voiceover("To solve this, we take the square root of both sides.")
]

#only("3")[
#voiceover("This gives us x minus three equals zero.")
]

#only("4")[
#voiceover("Finally, we add three to both sides.")
]

#only("5")[
#voiceover("And we get our solution: x equals three.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[The solution to $x^2 - 6x + 9 = 0$ is $x = 3$.]

#v(40pt)

#only("2-")[💡 This equation has a double root at $x = 3$.]

#only("1")[
#voiceover("So, the solution to our original equation x squared minus six x plus nine equals zero is x equals three.")
]

#only("2")[
#voiceover("It's worth noting that this equation has a double root at x equals three. This means that three is the only solution, but it occurs twice.")
]
]