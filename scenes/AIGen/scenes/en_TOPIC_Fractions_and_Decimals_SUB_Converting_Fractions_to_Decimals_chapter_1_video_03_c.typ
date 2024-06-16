#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $75/100$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $0.075$]#only("2-")[#text(fill:red)[a) $0.075$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $7.5$]#only("3-")[#text(fill:red)[b) $7.5$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) $0.75$]#only("4-")[#text(fill:green)[c) $0.75$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $75.0$]#only("5-")[#text(fill:red)[d) $75.0$]]
#v(40pt)

#only("1")[#voiceover("Great job! Now let's go through the options to understand why the correct answer is c) zero point seven five.")]
#only("2")[#voiceover("Option a) zero point zero seven five is incorrect. When you divide seventy-five by one hundred, you get zero point seven five, not zero point zero seven five.")]
#only("3")[#voiceover("Option b) seven point five is incorrect. Seventy-five divided by one hundred is much smaller than seven point five.")]
#only("4")[#voiceover("Option c) zero point seven five is correct. When you divide seventy-five by one hundred, you get zero point seven five.")]
#only("5")[#voiceover("Option d) seventy-five point zero is incorrect. Seventy-five divided by one hundred is much smaller than seventy-five.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Fractions to Decimals]
#v(40pt)
#only("1-")[- Step 1: Identify the denominator. 🧮]
#v(20pt)
#only("2-")[- Step 2: Write the numerator as a number. ✍️]
#v(20pt)
#only("3-")[- Step 3: Add a decimal point before the last digit. ➕]

#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert fractions to decimals.")
]
#only("2")[
#voiceover("First, we identify the denominator of the fraction.")
]
#only("3")[
#voiceover("Next, we write the numerator as a number.")
]
#only("4")[
#voiceover("Finally, we add a decimal point before the last digit of the numerator.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $75/100$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: Denominator is $100$.]
#v(20pt)
#only("2-")[- Step 2: Numerator is $75$.]
#v(20pt)
#only("3-")[- Step 3: Add a decimal point before the last two digits: $0.75$.]

#only("1")[
#voiceover("Now let's apply these steps to the fraction seventy-five over one hundred. First, we note that the denominator is one hundred.")
]
#only("2")[
#voiceover("Next, we write the numerator, which is seventy-five as a regular number.")
]
#only("3")[
#voiceover("Finally, we add a decimal point before the last two digits of the numerator, giving us point seven five, which is typically written as zero point seven five. And that's the correct answer!")
]
]