#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]
#v(40pt)
#only("1-")[Equation: $x^2 + 2x - 8 = 0$]
#v(20pt)
#only("2-")[Step 1: Identify $a$, $b$, and $c$]
#v(10pt)
#only("3-")[- $a = 1$]
#v(5pt)
#only("4-")[- $b = 2$]
#v(5pt)
#only("5-")[- $c = -8$]

#only("1")[#voiceover("Not quite, but let's go through the correct solution step-by-step. We start with the equation x squared plus two x minus eight equals zero.")]
#only("2")[#voiceover("The first step is to identify the coefficients a, b, and c in the standard form ax squared plus bx plus c equals zero.")]
#only("3")[#voiceover("Here, a is equal to one,")]
#only("4")[#voiceover("b is equal to two,")]
#only("5")[#voiceover("and c is equal to negative eight.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Factoring the Equation]
#v(40pt)
#only("1-")[Step 2: Find two numbers that:
- Multiply to give $a dot c = 1 dot (-8) = -8$
- Add up to $b = 2$]
#v(20pt)
#only("2-")[The numbers are 4 and -2]
#v(20pt)
#only("3-")[Step 3: Rewrite the middle term]
#v(10pt)
#only("4-")[$x^2 + 4x - 2x - 8 = 0$]

#only("1")[#voiceover("Now, we need to factor the equation. To do this, we look for two numbers that multiply to give a times c, which is negative eight, and add up to b, which is two.")]
#only("2")[#voiceover("These numbers are four and negative two.")]
#only("3")[#voiceover("Next, we rewrite the middle term using these numbers.")]
#only("4")[#voiceover("This gives us x squared plus four x minus two x minus eight equals zero.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Grouping Terms]
#v(40pt)
#only("1-")[Step 4: Group the terms]
#v(10pt)
#only("2-")[$(x^2 + 4x) + (-2x - 8) = 0$]
#v(20pt)
#only("3-")[Step 5: Factor out the common factor in each group]
#v(10pt)
#only("4-")[$x(x + 4) - 2(x + 4) = 0$]

#only("1")[#voiceover("Now we group the terms.")]
#only("2")[#voiceover("This gives us x squared plus four x in parentheses, plus negative two x minus eight in parentheses, equals zero.")]
#only("3")[#voiceover("Next, we factor out the common factor in each group.")]
#only("4")[#voiceover("We get x times x plus four, minus two times x plus four, equals zero.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Factorization]
#v(40pt)
#only("1-")[Step 6: Factor out the common binomial]
#v(10pt)
#only("2-")[$$(x + 4)(x - 2) = 0$$]
#v(20pt)
#only("3-")[Step 7: Use the zero product property]
#v(10pt)
#only("4-")[Either $x + 4 = 0$ or $x - 2 = 0$]
#v(10pt)
#only("5-")[So, $x = -4$ or $x = 2$]

#only("1")[#voiceover("Now we can factor out the common binomial.")]
#only("2")[#voiceover("This gives us x plus four times x minus two equals zero.")]
#only("3")[#voiceover("Finally, we use the zero product property, which states that if the product of factors is zero, then one of the factors must be zero.")]
#only("4")[#voiceover("So, either x plus four equals zero, or x minus two equals zero.")]
#only("5")[#voiceover("Solving these, we get x equals negative four or x equals two. And there you have it! These are the solutions to our quadratic equation.")]
]