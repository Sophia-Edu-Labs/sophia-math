#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $25/100$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $2.50$]#only("2-")[#text(fill:red)[a) $2.50$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $25.0$]#only("3-")[#text(fill:red)[b) $25.0$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $0.025$]#only("4-")[#text(fill:red)[c) $0.025$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) $0.250$]#only("5-")[#text(fill:green)[d) $0.250$]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's go through the options to understand why the correct answer is d) 0.250.")]
#only("2")[#voiceover("Option a) 2.50 is incorrect. 2.50 is much larger than 0.250.")]
#only("3")[#voiceover("Option b) 25.0 is incorrect. 25.0 is twenty-five, which is much larger than 0.250.")]
#only("4")[#voiceover("Option c) 0.025 is incorrect. 0.025 is twenty-five thousandths, which is much smaller than 0.250.")]
#only("5")[#voiceover("Option d) 0.250 is correct. When you divide 25 by 100, you get 0.250.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("2-")[- Step 1: Identify the denominator. 🧮]
#v(20pt)
#only("3-")[- Step 2: Write the numerator as a number. ✍️]
#v(20pt)
#only("4-")[- Step 3: Add a decimal point before the last digit. ➕]

#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert fractions to decimals.")]
#only("2")[
#voiceover("First, we identify the denominator of the fraction.")]
#only("3")[
#voiceover("Next, we write the numerator as a number.")]
#only("4")[
#voiceover("Finally, we add a decimal point before the last digit of the numerator.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $25/100$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: Denominator is $100$.]
#v(20pt)
#only("2-")[- Step 2: Numerator is $25$.]
#v(20pt)
#only("3-")[- Step 3: Add a decimal point before the last digit: $0.250$.]

#only("1")[
#voiceover("Now let's apply these steps to the fraction twenty-five over one hundred. First, we note that the denominator is one hundred.")]
]
#only("2")[
#voiceover("Next, we write the numerator, which is twenty-five, as a regular number.")]
]
#only("3")[
#voiceover("Finally, we add a decimal point before the last digit of the numerator, giving us zero point two five zero. And that's the correct answer!")]
]
]