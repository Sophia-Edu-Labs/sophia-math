#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Present Value (P V) 💰]
#v(40pt)
#only("1-")[- Current value of a future amount]
#v(20pt)
#only("2-")[- Discounted at a specific interest rate]
#v(20pt)
#only("3-")[- Formula: $P V = F V / (1 + r)^n$]
#only("1")[
#voiceover("Present value, or P V, is the current value of a future amount of money.")
]
#only("2")[
#voiceover("This future amount is discounted at a specific interest rate to determine its present value.")
]
#only("3")[
#voiceover("The formula to calculate present value is P V equals F V divided by the quantity one plus r raised to the power of n, where F V is the future value, r is the interest rate, and n is the number of periods.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example 📝]
#v(40pt)
#only("1-")[- Future value: \$1,000]
#v(20pt)
#only("2-")[- Interest rate: 5% per year]
#v(20pt)
#only("3-")[- Number of years: 3]
#v(20pt)
#only("4-")[- $P V = 1000 / (1 + 0.05)^3 = 863.84$]
#only("1")[
#voiceover("Let's consider an example. Suppose you have a future value of 1,000 dollars.")
]
#only("2")[
#voiceover("The interest rate is 5 percent per year.")
]
#only("3")[
#voiceover("And the number of years is 3.")
]
#only("4")[
#voiceover("Using the formula, we can calculate the present value as 1,000 dollars divided by the quantity one plus 0.05 raised to the power of 3. This gives us a present value of 863 dollars and 84 cents.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Importance 🌟]
#v(40pt)
#only("1-")[- Comparing values across time]
#v(20pt)
#only("2-")[- Making investment decisions]
#v(20pt)
#only("3-")[- Determining loan payments]
#only("1")[
#voiceover("Present value is important because it allows us to compare values across different points in time.")
]
#only("2")[
#voiceover("It's a key concept in making investment decisions, as it helps determine if a future return is worth the initial investment.")
]
#only("3")[
#voiceover("Present value is also used in determining loan payments, as the loan amount is the present value of the future payments.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Present Value (P V) = Current value of a future amount 💰]
#v(20pt)
#only("2-")[- Discounted at a specific interest rate 📉]
#v(20pt)
#only("3-")[- Formula: $P V = F V / (1 + r)^n$ 🧮]
#v(20pt)
#only("4-")[- Key concept in finance and investment 🗝️]
#only("1")[
#voiceover("In summary, present value, or P V, is the current value of a future amount of money.")
]
#only("2")[
#voiceover("This future amount is discounted at a specific interest rate to determine its present value.")
]
#only("3")[
#voiceover("The formula to calculate present value is P V equals F V divided by the quantity one plus r raised to the power of n.")
]
#only("4")[
#voiceover("Present value is a key concept in finance and investment, used in comparing values across time, making investment decisions, and determining loan payments.")
]
]