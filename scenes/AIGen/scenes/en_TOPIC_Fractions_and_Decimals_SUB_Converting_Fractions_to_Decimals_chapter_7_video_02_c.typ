#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Complex Fractions to Decimals]
#v(40pt)
What is $11/20$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $0.55$]#only("2-")[#text(fill:green)[a) $0.55$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $0.5$]#only("3-")[#text(fill:red)[b) $0.5$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $0.525$]#only("4-")[#text(fill:red)[c) $0.525$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $0.50$]#only("5-")[#text(fill:red)[d) $0.50$]]
#v(40pt)

#only("1")[#voiceover("Nice try! Let's go through the options to understand why the correct answer is a) 0.55.")]
#only("2")[#voiceover("Option a) 0.55 is correct. When you divide eleven by twenty, you get zero point fifty-five.")]
#only("3")[#voiceover("Option b) 0.5 is incorrect. Zero point five is the same as one half, which is not equal to eleven over twenty.")]
#only("4")[#voiceover("Option c) 0.525 is incorrect. Zero point five two five is not equal to eleven over twenty.")]
#only("5")[#voiceover("Option d) 0.50 is incorrect. Zero point five zero is the same as zero point five, which is not equal to eleven over twenty.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("1-")[- Step 1: Divide the numerator by the denominator. ➗]
#v(20pt)
#only("2-")[- Step 2: Write the result as a decimal. ✍️]

#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert fractions to decimals. First, divide the numerator by the denominator.")
]
#only("2")[
#voiceover("Next, write the result as a decimal number.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $11/20$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: ➗ Divide $11$ by $20$. $arrow 11 / 20 = 0.55$]
#v(20pt)
#only("2-")[- Step 2: ✍️ Write the result as a decimal: $0.55$]

#only("1")[
#voiceover("Now let's apply these steps to the fraction eleven over twenty. First, we divide eleven by twenty. This gives us zero point fifty-five.")
]
#only("2")[
#voiceover("Next, we write the result as a decimal number, which is zero point fifty-five. And that's the correct answer!")
]
]