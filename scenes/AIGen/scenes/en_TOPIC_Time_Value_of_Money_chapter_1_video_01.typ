#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Present Value (P V)]
#v(40pt)
#only("1-")[- Current value of future money 💰]
#v(20pt)
#only("2-")[- Discounted at an interest rate 📉]
#only("1")[
#voiceover("Present Value, or P V, is the current value of a future amount of money. It's the value of that future money in today's terms.")
]
#only("2")[
#voiceover("To calculate the Present Value, we discount the future amount at a specific interest rate. This interest rate represents the time value of money and the risk associated with the future cash flow.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[P V Formula]
#v(40pt)
#only("1-")[$ P V = F V / (1 + r)^n $]
#v(20pt)
#only("2-")[- $F V$: Future Value 📆]
#v(10pt)
#only("3-")[- $r$: Interest Rate (per period) 📈]
#v(10pt)
#only("4-")[- $n$: Number of Periods ⏳]
#only("1")[
#voiceover("The formula for Present Value is: P V equals F V divided by the quantity one plus r raised to the power of n.")
]
#only("2")[
#voiceover("In this formula, F V stands for Future Value. This is the amount of money that will be received or paid at a future date.")
]
#only("3")[
#voiceover("r represents the Interest Rate per period. This is the rate used to discount the future cash flow.")
]
#only("4")[
#voiceover("n is the Number of Periods. It's the number of periods, usually years, between now and when the future amount will be received or paid.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Suppose you expect to receive \$1,000 in 5 years. The interest rate is 5% per year. What is the P V?]
#v(20pt)
#only("2-")[Given:]
#v(10pt)
#only("2-")[- $F V = \$1,000$]
#v(10pt)
#only("2-")[- $r = 5\% = 0.05$]
#v(10pt)
#only("2-")[- $n = 5$ years]
#v(20pt)
#only("3-")[$ P V = \$1,000 / (1 + 0.05)^5 $]
#v(10pt)
#only("4-")[$ P V ≈ \$783.53 $]
#only("1")[
#voiceover("Let's look at an example. Suppose you expect to receive 1,000 dollars in 5 years. The interest rate is 5% per year. What is the Present Value of this future cash flow?")
]
#only("2")[
#voiceover("We have the Future Value of 1,000 dollars, the Interest Rate of 5% or 0.05, and the Number of Periods is 5 years.")
]
#only("3")[
#voiceover("Plugging these values into our formula, we get: P V equals 1,000 dollars divided by the quantity one plus 0.05 raised to the power of 5.")
]
#only("4")[
#voiceover("Calculating this, we find that the Present Value is approximately 783 dollars and 53 cents. This means that receiving 1,000 dollars in 5 years is equivalent to receiving about 783 dollars and 53 cents today, assuming a 5% annual interest rate.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- P V: Current value of future money 💰]
#v(20pt)
#only("2-")[- Discounted at an interest rate 📉]
#v(20pt)
#only("3-")[- Formula: $ P V = F V / (1 + r)^n $]
#v(20pt)
#only("4-")[- Key concept in finance and investment 🏦💸]
#only("1")[
#voiceover("In summary, Present Value is the current value of a future sum of money.")
]
#only("2")[
#voiceover("It's calculated by discounting the future amount at a specific interest rate.")
]
#only("3")[
#voiceover("The formula for Present Value is: P V equals F V divided by the quantity one plus r raised to the power of n.")
]
#only("4")[
#voiceover("Present Value is a key concept in finance and investment. It's used to evaluate the profitability of investments and to make decisions about where to allocate resources.")
]
]