#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Real-World Application]
#v(40pt)
Which of the following is an example of a real-world application of rational exponents?
#v(40pt)
#only("-1")[a) Calculating compound interest]#only("2-")[#text(fill:green)[a) Calculating compound interest]]
#v(10pt)
#only("-2")[b) Finding the area of a circle]#only("3-")[#text(fill:red)[b) Finding the area of a circle]]
#v(10pt)
#only("-3")[c) Solving linear equations]#only("4-")[#text(fill:red)[c) Solving linear equations]]
#v(10pt)
#only("-4")[d) Determining the slope of a line]#only("5-")[#text(fill:red)[d) Determining the slope of a line]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a, calculating compound interest, is indeed a real-world application of rational exponents.")]
#only("3")[#voiceover("Finding the area of a circle, option b, does not involve rational exponents. The area of a circle is calculated using the formula pi times the radius squared.")]
#only("4")[#voiceover("Option c, solving linear equations, also does not require rational exponents. Linear equations are typically solved using basic arithmetic operations.")]
#only("5")[#voiceover("Determining the slope of a line, option d, is incorrect as well. The slope is calculated by dividing the change in y by the change in x, which does not involve rational exponents.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Compound Interest]
#v(40pt)
#only("1-")[The formula for compound interest is:]
#v(20pt)
#only("2-")[$ A = P(1 + r/n)^(n t) $]
#v(20pt)
#only("3-")[Where:]
#v(10pt)
#only("4-")[- $A$ = final amount 💰]
#only("5-")[- $P$ = initial principal balance 💸]
#only("6-")[- $r$ = annual interest rate 📈]
#only("7-")[- $n$ = number of times interest is compounded per year 🗓️]
#only("8-")[- $t$ = number of years 📅]

#only("1")[#voiceover("Let's see how compound interest involves rational exponents.")]
#only("2")[#voiceover("The formula for compound interest is A equals P times the quantity 1 plus r over n, raised to the power of n times t.")]
#only("3")[#voiceover("In this formula:")]
#only("4")[#voiceover("A represents the final amount,")]
#only("5")[#voiceover("P is the initial principal balance,")]
#only("6")[#voiceover("r is the annual interest rate,")]
#only("7")[#voiceover("n is the number of times interest is compounded per year,")]
#only("8")[#voiceover("and t is the number of years.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Let's say you invest \$1000 at an annual interest rate of 5% compounded quarterly for 10 years.]
#v(20pt)
#only("2-")[Here's how we would calculate the final amount:]
#v(20pt)
#only("3-")[$ P = $1000, $r = 0.05, $n = 4, $t = 10 $]
#v(10pt)
#only("4-")[$ A = 1000(1 + 0.05/4)^(4*10) $]
#v(10pt)
#only("5-")[$ A = 1000(1.0125)^40 $]
#v(10pt)
#only("6-")[$ A = 1000 * 1.6386... $]
#v(10pt)
#only("7-")[$ A = \$1638.62 $]

#only("1")[#voiceover("Consider this example. Let's say you invest 1000 dollars at an annual interest rate of 5 percent compounded quarterly for 10 years.")]
#only("2")[#voiceover("Here's how we would calculate the final amount.")]
#only("3")[#voiceover("P is 1000 dollars, r is 0.05 for 5 percent, n is 4 for quarterly compounding, and t is 10 for 10 years.")]
#only("4")[#voiceover("Plugging these values into the formula, we get A equals 1000 times the quantity 1 plus 0.05 over 4, raised to the power of 4 times 10.")]
#only("5")[#voiceover("Simplifying, this becomes A equals 1000 times 1.0125 raised to the power of 40.")]
#only("6")[#voiceover("Calculating this, we get A equals 1000 times approximately 1.6386.")]
#only("7")[#voiceover("Therefore, the final amount after 10 years would be about 1638 dollars and 62 cents.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Exponents]
#v(40pt)
#only("1-")[In this example, the exponent $(n t)$ is a rational number:]
#v(20pt)
#only("2-")[$ (n t) = 4 * 10 = 40 $]
#v(20pt)
#only("3-")[This can be written as a rational exponent:]
#v(20pt)
#only("4-")[$ (1.0125)^40 = (1.0125)^(40/1) $]
#v(20pt)
#only("5-")[Therefore, rational exponents are used in calculating compound interest. 🎓]

#only("1")[#voiceover("Now, let's focus on the exponent in this example. The exponent n times t is a rational number.")]
#only("2")[#voiceover("In our case, n times t equals 4 times 10, which is 40.")]
#only("3")[#voiceover("This can be written as a rational exponent.")]
#only("4")[#voiceover("1.0125 raised to the power of 40 is the same as 1.0125 raised to the power of 40 over 1, which is a rational exponent.")]
#only("5")[#voiceover("This demonstrates how rational exponents are used in calculating compound interest, making it a real-world application of this mathematical concept.")]
]