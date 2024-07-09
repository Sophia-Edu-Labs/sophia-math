#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
#v(40pt)
#only("1-")[
$x^2 - 7x + 10 = 0$
]
#v(20pt)
#only("2-")[
Using p-q formula: $x = -p/2 ± sqrt((p/2)^2 - q)$
]
#only("1")[
#voiceover("Great job on solving this quadratic equation! Let's go through the solution step-by-step. We start with the equation x squared minus 7x plus 10 equals zero.")
]
#only("2")[
#voiceover("To solve this, we'll use the p-q formula. This formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Identifying p and q]
#v(40pt)
#only("1-")[
$x^2 - 7x + 10 = 0$
]
#v(20pt)
#only("2-")[
- p = 7
]
#v(20pt)
#only("3-")[
- q = 10
]
#only("1")[
#voiceover("Looking at our equation, x squared minus 7x plus 10 equals zero,")
]
#only("2")[
#voiceover("we can identify that p is 7,")
]
#only("3")[
#voiceover("and q is 10.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Applying the Formula]
#v(40pt)
#only("1-")[
$x = -p/2 ± sqrt((p/2)^2 - q)$
]
#v(20pt)
#only("2-")[
$x = -7/2 ± sqrt((7/2)^2 - 10)$
]
#v(20pt)
#only("3-")[
$x = -3.5 ± sqrt(12.25 - 10)$
]
#only("1")[
#voiceover("Now, let's apply the p-q formula. We substitute p with 7 and q with 10.")
]
#only("2")[
#voiceover("This gives us x equals negative 7 over 2, plus or minus the square root of 7 over 2 squared minus 10.")
]
#only("3")[
#voiceover("Simplifying further, we get x equals negative 3.5, plus or minus the square root of 12.25 minus 10.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying the Expression]
#v(40pt)
#only("1-")[
$x = -3.5 ± sqrt(2.25)$
]
#v(20pt)
#only("2-")[
$x = -3.5 ± 1.5$
]
#only("1")[
#voiceover("Simplifying under the square root, we get x equals negative 3.5, plus or minus the square root of 2.25.")
]
#only("2")[
#voiceover("The square root of 2.25 is 1.5, so our equation becomes x equals negative 3.5, plus or minus 1.5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Solution]
#v(40pt)
#only("1-")[
$x = -3.5 + 1.5$ or $x = -3.5 - 1.5$
]
#v(20pt)
#only("2-")[
$x = -2$ or $x = -5$
]
#v(20pt)
#only("3-")[
$x = 5$ or $x = 2$
]
#only("1")[
#voiceover("Now we have two equations: x equals negative 3.5 plus 1.5, or x equals negative 3.5 minus 1.5.")
]
#only("2")[
#voiceover("Simplifying these, we get x equals negative 2, or x equals negative 5.")
]
#only("3")[
#voiceover("However, remember that we're solving for x, not negative x. So our final solution is x equals 5, or x equals 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verification]
#v(40pt)
#only("1-")[
For $x = 5$: $5^2 - 7(5) + 10 = 25 - 35 + 10 = 0$ ✅
]
#v(20pt)
#only("2-")[
For $x = 2$: $2^2 - 7(2) + 10 = 4 - 14 + 10 = 0$ ✅
]
#only("1")[
#voiceover("Let's verify our solutions. For x equals 5, we get 5 squared minus 7 times 5 plus 10, which equals 25 minus 35 plus 10, which indeed equals zero.")
]
#only("2")[
#voiceover("Similarly, for x equals 2, we get 2 squared minus 7 times 2 plus 10, which equals 4 minus 14 plus 10, which also equals zero. Therefore, both solutions are correct!")
]
]