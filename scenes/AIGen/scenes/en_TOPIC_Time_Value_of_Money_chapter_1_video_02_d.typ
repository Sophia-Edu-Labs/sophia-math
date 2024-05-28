#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Present Value]
#v(40pt)
What does P V stand for?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) Potential Value]#only("2-")[#text(fill:red)[a) Potential Value]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Present Value]#only("3-")[#text(fill:green)[b) Present Value]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) Past Value]#only("4-")[#text(fill:red)[c) Past Value]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) Projected Value]#only("5-")[#text(fill:red)[d) Projected Value]]
#only("1")[#voiceover("That's not right. Let's find the solution together.")]
#only("2")[#voiceover("a) Potential Value is incorrect. P V does not stand for Potential Value.")]
#only("3")[#voiceover("b) Present Value is the correct answer. P V indeed stands for Present Value.")]
#only("4")[#voiceover("c) Past Value is incorrect. P V does not represent Past Value.")]
#only("5")[#voiceover("d) Projected Value is also incorrect. P V is not an abbreviation for Projected Value.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Present Value]
#v(40pt)
#only("1-")[P V stands for #text(weight: "bold")[Present Value].]
#v(20pt)
#only("2-")[Present Value is:]
#v(10pt)
#only("3-")[- The current value of a future amount of money 💰]
#v(10pt)
#only("4-")[- Discounted at a specific interest rate 📉]
#v(40pt)
#only("5-")[Formula: $P V = F V/(1+r)^n$]
#v(10pt)
#only("6-")[- $F V$: Future Value]
#only("7-")[- $r$: Interest Rate per Period]  
#only("8-")[- $n$: Number of Periods]

#only("1")[#voiceover("P V is the abbreviation for Present Value.")]
#only("2")[#voiceover("Present Value is a key concept in finance and the time value of money.")]
#only("3")[#voiceover("It represents the current value of a future sum of money.")]
#only("4")[#voiceover("This future amount is discounted back to the present using a specific interest rate.")]
#only("5")[#voiceover("The formula to calculate Present Value is P V equals F V divided by the quantity 1 plus r raised to the power of n.")]
#only("6")[#voiceover("In this formula, F V stands for the Future Value, the amount of money to be received in the future.")]
#only("7")[#voiceover("r represents the interest rate per period, usually expressed as a decimal.")]
#only("8")[#voiceover("And n is the number of periods, typically the number of years, between the present and when the future amount will be received.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[What is the Present Value of \$1000 to be received in 5 years at an annual discount rate of 5%?]
#v(40pt)
#only("2-")[Given:]
#v(10pt)
#only("3-")[- $F V = €1000$]
#only("4-")[- $r = 5%$ or $0.05$]
#only("5-")[- $n = 5$ years]
#v(40pt)
#only("6-")[Solution: $P V = 1000/(1+0.05)^5 = €783.53$]

#only("1")[#voiceover("Let's look at an example to solidify our understanding.")]
#only("2")[#voiceover("We are given the following information:")]
#only("3")[#voiceover("The Future Value is 1000 dollars.")]
#only("4")[#voiceover("The annual discount rate is 5%, or 0.05 in decimal form.")]
#only("5")[#voiceover("And the number of years is 5.")]
#only("6")[#voiceover("Plugging these values into our formula, we get that the Present Value equals 1000 divided by the quantity 1 plus 0.05 raised to the power of 5. This equals 783 dollars and 53 cents.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- P V stands for #text(weight: "bold")[Present Value] 📍]
#v(20pt)  
#only("2-")[- P V is the current value of a future amount of money 💰]
#v(20pt)
#only("3-")[- P V is calculated using the formula: $P V = F V/(1+r)^n$ 🧮]
#v(20pt)
#only("4-")[- P V is a fundamental concept in the time value of money 🕰️]

#only("1")[#voiceover("Remember, P V stands for Present Value.")]
#only("2")[#voiceover("Present Value represents the current worth of a future sum of money.")]
#only("3")[#voiceover("It's calculated using the formula P V equals F V divided by the quantity 1 plus r raised to the power of n.")]
#only("4")[#voiceover("Present Value is a foundational concept in understanding the time value of money.")]
]