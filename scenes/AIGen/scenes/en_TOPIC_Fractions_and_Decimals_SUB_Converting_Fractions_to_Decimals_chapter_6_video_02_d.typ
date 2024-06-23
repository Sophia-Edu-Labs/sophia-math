#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $5/8$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $0.625$]#only("2-")[#text(fill:green)[a) $0.625$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $0.62$]#only("3-")[#text(fill:red)[b) $0.62$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $0.65$]#only("4-")[#text(fill:red)[c) $0.65$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $0.6$]#only("5-")[#text(fill:red)[d) $0.6$]]
#v(40pt)

#only("1")[#voiceover("That's okay! Let's go through the options to understand why the correct answer is a) 0.625.")]
#only("2")[#voiceover("Option a) 0.625 is correct. When you divide 5 by 8, you get 0.625.")]
#only("3")[#voiceover("Option b) 0.62 is incorrect. 0.62 is close but not accurate enough. The correct decimal is 0.625.")]
#only("4")[#voiceover("Option c) 0.65 is incorrect. 0.65 is larger than 0.625.")]
#only("5")[#voiceover("Option d) 0.6 is incorrect. 0.6 is smaller than 0.625.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("1-")[- Step 1: Divide the numerator by the denominator. ➗]
#v(20pt)
#only("2-")[- Step 2: Perform the division to get the decimal. 🧮]
#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert fractions to decimals. First, divide the numerator by the denominator.")
]
#only("2")[
#voiceover("Next, perform the division to get the decimal value.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $5/8$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: Divide $5$ by $8$. ➗]
#v(20pt)
#only("2-")[- Step 2: Perform the division: $5 ÷ 8 = 0.625$. 🧮]
#only("1")[
#voiceover("Now let's apply these steps to the fraction five over eight. First, we divide five by eight.")
]
#only("2")[
#voiceover("Next, we perform the division. When you divide five by eight, you get zero point six two five. And that's the correct answer!")
]
]