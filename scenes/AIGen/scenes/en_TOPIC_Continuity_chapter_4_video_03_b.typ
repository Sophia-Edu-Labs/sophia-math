#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Nice try! Let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Continuity of $f(x) = 1/x$]

#v(40pt)

#only("2-")[#text()[$ f(x) = 1/x $]]
// The function f(x) is shown from slide 2 onward

#only("2")[
#voiceover("We're considering the function f of x equals one over x.")
]

]

#slide()[

#only("1")[
#voiceover("To check continuity at a point, we need to verify two conditions:")
]

#text(size: 30pt, weight: "bold")[Conditions for Continuity]

#v(40pt)

#only("1-")[1. $lim_(x→1) f(x)$ exists]
// The first condition for continuity is shown from slide 1 onward

#only("2-")[2. $lim_(x→1) f(x) = f(1)$]
// The second condition for continuity is shown from slide 2 onward

#only("2")[
#voiceover("First, the limit of f of x as x approaches one must exist. Second, this limit must be equal to the value of the function at one.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Checking Condition 1]

#v(40pt)

#only("1-")[$ lim_(x→1) f(x) = lim_(x→1) 1/x $]
// The limit is shown from slide 1 onward

#v(10pt)

#only("2-")[$ = 1/1 = 1 $]
// The limit calculation is shown from slide 2 onward

#only("1")[#voiceover("Let's start with the first condition. We need to find the limit of one over x as x approaches one.")]

#only("2")[#voiceover("As x gets closer and closer to one, the denominator approaches one. So, the limit is equal to one over one, which is one.")]

#only("3")[#voiceover("Thus, the limit exists and is equal to one. ✅")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Checking Condition 2]

#v(40pt)

#only("1-")[$ f(1) = 1/1 = 1 $]
// The function value at 1 is shown from slide 1 onward

#v(10pt)

#only("2-")[$ lim_(x→1) f(x) = 1 $]
// The limit from the previous slide is recalled from slide 2 onward

#v(10pt)

#only("3-")[$ ∴ lim_(x→1) f(x) = f(1) $]
// The conclusion that the limit equals the function value is shown from slide 3 onward

#only("1")[#voiceover("Now, let's check the second condition. We need to evaluate the function at x equals one.")]

#only("2")[#voiceover("f of one equals one over one, which is one. This is the same as the limit we calculated earlier.")]

#only("3")[#voiceover("Therefore, the limit as x approaches one equals the function value at one. The second condition is also satisfied. ✅")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Conclusion]

#v(40pt)

#only("1-")[Both conditions are satisfied:]

#v(20pt)

#only("2-")[1. $lim_(x→1) f(x)$ exists and equals 1]

#v(10pt)

#only("3-")[2. $lim_(x→1) f(x) = f(1) = 1$]

#v(20pt)

#only("4-")[Therefore, $f(x) = 1/x$ is continuous at $x = 1$. 🌟]

#only("1")[#voiceover("In summary, we checked both conditions for continuity.")]

#only("2")[#voiceover("The limit of f of x as x approaches one exists and equals one.")]

#only("3")[#voiceover("This limit is equal to the function value at one.")]

#only("4")[#voiceover("Since both conditions are met, we can conclude that the function f of x equals one over x is indeed continuous at x equals one. Great work on solving this problem!")]

]