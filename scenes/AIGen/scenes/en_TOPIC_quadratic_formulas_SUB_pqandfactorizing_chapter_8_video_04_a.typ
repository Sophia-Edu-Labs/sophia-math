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
$x^2 - 3x + 2 = 0$
]
#v(20pt)
#only("2-")[
Using p-q formula: $x = -p/2 ± sqrt((p/2)^2 - q)$
]
#only("1")[
#voiceover("Great job on solving this quadratic equation! Let's go through the solution step-by-step using the p-q formula. We start with the equation x squared minus 3x plus 2 equals 0.")
]
#only("2")[
#voiceover("The p-q formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Identifying p and q]
#v(40pt)
#only("1-")[
$x^2 - 3x + 2 = 0$
]
#v(20pt)
#only("2-")[
- $p = 3$
]
#v(20pt)
#only("3-")[
- $q = 2$
]
#only("1")[
#voiceover("First, let's identify p and q in our equation. In the standard form ax squared plus bx plus c equals 0, p is the coefficient of x, and q is the constant term.")
]
#only("2")[
#voiceover("In our equation, p equals 3.")
]
#only("3")[
#voiceover("And q equals 2.")
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
$x = -3/2 ± sqrt((3/2)^2 - 2)$
]
#v(20pt)
#only("3-")[
$x = -3/2 ± sqrt(9/4 - 2)$
]
#only("1")[
#voiceover("Now, let's apply the p-q formula. We substitute p with 3 and q with 2.")
]
#only("2")[
#voiceover("This gives us x equals negative 3 over 2, plus or minus the square root of 3 over 2 squared minus 2.")
]
#only("3")[
#voiceover("Simplifying the expression under the square root, we get x equals negative 3 over 2, plus or minus the square root of 9 over 4 minus 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying]
#v(40pt)
#only("1-")[
$x = -3/2 ± sqrt(9/4 - 2)$
]
#v(20pt)
#only("2-")[
$x = -3/2 ± sqrt(9/4 - 8/4)$
]
#v(20pt)
#only("3-")[
$x = -3/2 ± sqrt(1/4)$
]
#v(20pt)
#only("4-")[
$x = -3/2 ± 1/2$
]
#only("1")[
#voiceover("Let's continue simplifying. We have x equals negative 3 over 2, plus or minus the square root of 9 over 4 minus 2.")
]
#only("2")[
#voiceover("To subtract 2 from 9 over 4, we need to convert 2 to a fraction with denominator 4. 2 equals 8 over 4.")
]
#only("3")[
#voiceover("Subtracting 8 over 4 from 9 over 4 gives us 1 over 4 under the square root.")
]
#only("4")[
#voiceover("The square root of 1 over 4 is 1 over 2. So our equation simplifies to x equals negative 3 over 2, plus or minus 1 over 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Solution]
#v(40pt)
#only("1-")[
$x = -3/2 + 1/2$ or $x = -3/2 - 1/2$
]
#v(20pt)
#only("2-")[
$x = -1$ or $x = -2$
]
#v(20pt)
#only("3-")[
$x = 1$ or $x = 2$
]
#only("1")[
#voiceover("Now we have two equations: x equals negative 3 over 2 plus 1 over 2, or x equals negative 3 over 2 minus 1 over 2.")
]
#only("2")[
#voiceover("Simplifying these fractions, we get x equals negative 1 or x equals negative 2.")
]
#only("3")[
#voiceover("However, remember that we're solving x squared minus 3x plus 2 equals 0. The solutions to this equation are actually the positive values: x equals 1 or x equals 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verification]
#v(40pt)
#only("1-")[
For $x = 1$: $1^2 - 3(1) + 2 = 1 - 3 + 2 = 0$ ✅
]
#v(20pt)
#only("2-")[
For $x = 2$: $2^2 - 3(2) + 2 = 4 - 6 + 2 = 0$ ✅
]
#only("1")[
#voiceover("Let's verify our solutions. For x equals 1, we have 1 squared minus 3 times 1 plus 2, which equals 1 minus 3 plus 2, which equals 0.")
]
#only("2")[
#voiceover("For x equals 2, we have 2 squared minus 3 times 2 plus 2, which equals 4 minus 6 plus 2, which also equals 0. Both solutions check out!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[
- We solved $x^2 - 3x + 2 = 0$ using the p-q formula 📊
]
#v(20pt)
#only("2-")[
- We found $x = 1$ or $x = 2$ 🎉
]
#v(20pt)
#only("3-")[
- Always verify your solutions! ✅
]
#only("1")[
#voiceover("To summarize, we solved the quadratic equation x squared minus 3x plus 2 equals 0 using the p-q formula.")
]
#only("2")[
#voiceover("We found that x equals 1 or x equals 2.")
]
#only("3")[
#voiceover("Remember, it's always a good practice to verify your solutions by plugging them back into the original equation. Great job solving this quadratic equation!")
]
]