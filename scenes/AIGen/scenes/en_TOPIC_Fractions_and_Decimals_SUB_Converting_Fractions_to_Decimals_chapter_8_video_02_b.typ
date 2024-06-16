#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting More Complex Fractions to Decimals]
#v(40pt)
What is $3/25$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $0.12$]#only("2-")[#text(fill:green)[a) $0.12$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $0.13$]#only("3-")[#text(fill:red)[b) $0.13$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $0.14$]#only("4-")[#text(fill:red)[c) $0.14$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $0.15$]#only("5-")[#text(fill:red)[d) $0.15$]]
#v(40pt)

#only("1")[#voiceover("That's not quite right. Let's go through the options to understand why the correct answer is a) zero point one two.")]
#only("2")[#voiceover("Option a) zero point one two is correct. When you divide three by twenty-five, you get zero point one two.")]
#only("3")[#voiceover("Option b) zero point one three is incorrect. Three divided by twenty-five is not equal to zero point one three.")]
#only("4")[#voiceover("Option c) zero point one four is also incorrect. Three divided by twenty-five does not equal zero point one four.")]
#only("5")[#voiceover("Option d) zero point one five is incorrect as well. Three divided by twenty-five is not equal to zero point one five.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("1-")[- Step 1: Divide the numerator by the denominator. ➗]
#v(20pt)
#only("2-")[- Step 2: Write down the result as a decimal. ✍️]
#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert fractions to decimals. First, divide the numerator by the denominator.")
]
#only("2")[
#voiceover("Next, write down the result as a decimal number.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $3/25$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: ➗ Divide $3$ by $25$. $arrow 3 / 25 = 0.12$]
#v(20pt)
#only("2-")[- Step 2: ✍️ Write down the result: $0.12$]

#only("1")[
#voiceover("Now let's apply these steps to the fraction three over twenty-five. First, we divide three by twenty-five, which equals zero point one two.")
]
#only("2")[
#voiceover("Next, we write down the result as a decimal number, which is zero point one two. And that's it, we're done! The solution is zero point one two.")
]
]