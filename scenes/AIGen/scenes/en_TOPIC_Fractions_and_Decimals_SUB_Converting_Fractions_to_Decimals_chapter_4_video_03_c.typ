#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $2/5$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $0.25$]#only("2-")[#text(fill:red)[a) $0.25$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $0.4$]#only("3-")[#text(fill:green)[b) $0.4$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $0.5$]#only("4-")[#text(fill:red)[c) $0.5$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $0.2$]#only("5-")[#text(fill:red)[d) $0.2$]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's go through the options to understand why the correct answer is b) 0.4.")]
#only("2")[#voiceover("Option a) 0.25 is incorrect. When you divide 2 by 5, you do not get 0.25.")]
#only("3")[#voiceover("Option b) 0.4 is correct. When you divide 2 by 5, you get 0.4.")]
#only("4")[#voiceover("Option c) 0.5 is incorrect. 0.5 is the same as one half, which is not equal to two fifths.")]
#only("5")[#voiceover("Option d) 0.2 is incorrect. 0.2 is the same as one fifth, which is not equal to two fifths.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("1-")[- Step 1: Divide the numerator by the denominator. ➗]
#v(20pt)
#only("2-")[- Step 2: Write down the result. ✍️]
#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert fractions to decimals. First, divide the numerator by the denominator.")
]
#only("2")[
#voiceover("Next, write down the result as the decimal representation of the fraction.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $2/5$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: ➗ Divide $2$ by $5$. $arrow 2 ÷ 5 = 0.4$]
#v(20pt)
#only("2-")[- Step 2: ✍️ Write down the result: $0.4$.]

#only("1")[
#voiceover("Now let's apply these steps to the fraction two over five. First, we divide the numerator, which is two, by the denominator, which is five. Two divided by five equals zero point four.")
]
#only("2")[
#voiceover("Next, we write down the result, which is zero point four. And that's it, we're done! The solution is zero point four.")
]
]