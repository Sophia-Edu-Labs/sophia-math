#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $1/2$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $0.2$]#only("2-")[#text(fill:red)[a) $0.2$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $0.5$]#only("3-")[#text(fill:green)[b) $0.5$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $2.0$]#only("4-")[#text(fill:red)[c) $2.0$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $5.0$]#only("5-")[#text(fill:red)[d) $5.0$]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's go through the options to understand why the correct answer is b) 0.5.")]
#only("2")[#voiceover("Option a) 0.2 is incorrect. One half is not equal to 0.2, which is one fifth.")]
#only("3")[#voiceover("Option b) 0.5 is correct. When you divide one by two, you get 0.5.")]
#only("4")[#voiceover("Option c) 2.0 is incorrect. One half is much smaller than two.")]
#only("5")[#voiceover("Option d) 5.0 is incorrect. One half is much smaller than five.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("1-")[- Step 1: Divide the numerator by the denominator. ➗]
#v(20pt)
#only("2-")[- Step 2: Place the decimal point in the quotient. ➕]
#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert fractions to decimals. First, divide the numerator by the denominator.")
]
#only("2")[
#voiceover("Next, place the decimal point in the quotient to get the decimal form of the fraction.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $1/2$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: ➗ Divide $1$ by $2$. $arrow 0.5$]
#v(20pt)
#only("2-")[- Step 2: ➕ Place the decimal point: $0.5$]

#only("1")[
#voiceover("Now let's apply these steps to the fraction one half. First, we divide one by two, which gives us zero point five.")
]
#only("2")[
#voiceover("Next, we place the decimal point in the quotient, which is already done in this case, giving us zero point five. And that's the correct answer!")
]
]