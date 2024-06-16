#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $3/10$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $0.3$]#only("2-")[#text(fill:green)[a) $0.3$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $3.0$]#only("3-")[#text(fill:red)[b) $3.0$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $0.03$]#only("4-")[#text(fill:red)[c) $0.03$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $30$]#only("5-")[#text(fill:red)[d) $30$]]
#v(40pt)

#only("1")[#voiceover("Not quite, but let's go through the options to understand why the correct answer is a) 0.3.")]
#only("2")[#voiceover("Option a) 0.3 is correct. When you divide 3 by 10, you get 0.3.")]
#only("3")[#voiceover("Option b) 3.0 is incorrect. 3.0 is the whole number three, which is much larger than 0.3.")]
#only("4")[#voiceover("Option c) 0.03 is incorrect. 0.03 is three hundredths, which is much smaller than 0.3.")]
#only("5")[#voiceover("Option d) 30 is incorrect. 30 is thirty, which is much larger than 0.3.")]
]



#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Conversion]
#v(40pt)
#only("2-")[- Step 1: Identify the denominator. 🧮]
#v(20pt)
#only("3-")[- Step 2: Write the numerator as a number. ✍️]
#v(20pt)
#only("4-")[- Step 3: Add a decimal point before the last digit. ➕]

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
#text(size: 30pt, weight: "bold")[Example: Converting $3/10$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: Denominator is $10$.]
#v(20pt)
#only("2-")[- Step 2: Numerator is $3$.]
#v(20pt)
#only("3-")[- Step 3: Add a decimal point before the last digit: $0.3$.]
#only("1")[
#voiceover("Now let's apply these steps to the fraction three over ten. First, we note that the denominator is ten.")
]
#only("2")[
#voiceover("Next, we write the numerator, which is three as a regular number.")
]
#only("3")[
#voiceover("Finally, we add a decimal point before the last digit of the numerator, giving us point three, which is typically written as zero point three. And that's the correct answer!")
]
]