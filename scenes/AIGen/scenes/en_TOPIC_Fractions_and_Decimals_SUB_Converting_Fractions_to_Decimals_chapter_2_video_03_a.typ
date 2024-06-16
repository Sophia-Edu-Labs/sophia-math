#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $625/1000$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $0.0625$]#only("2-")[#text(fill:green)[a) $0.0625$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $0.625$]#only("3-")[#text(fill:red)[b) $0.625$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $6.25$]#only("4-")[#text(fill:red)[c) $6.25$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $62.5$]#only("5-")[#text(fill:red)[d) $62.5$]]
#v(40pt)

#only("1")[#voiceover("That's not quite right. Let's go through the options to understand why the correct answer is a) 0.0625.")]
#only("2")[#voiceover("Option a) 0.0625 is correct. When you divide 625 by 1000, you get 0.0625.")]
#only("3")[#voiceover("Option b) 0.625 is incorrect. 0.625 is obtained by dividing 625 by 1000, but with one less zero. So, it's not the correct answer.")]
#only("4")[#voiceover("Option c) 6.25 is incorrect. 6.25 is much larger than 0.0625.")]
#only("5")[#voiceover("Option d) 62.5 is incorrect. 62.5 is even larger than 6.25, and much larger than 0.0625.")]
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
#text(size: 30pt, weight: "bold")[Example: Converting $625/1000$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: Denominator is $1000$.]
#v(20pt)
#only("2-")[- Step 2: Numerator is $625$.]
#v(20pt)
#only("3-")[- Step 3: Add a decimal point before the last three digits: $0.625$.]
#only("1")[
#voiceover("Now let's apply these steps to the fraction six hundred twenty-five over one thousand. First, we note that the denominator is one thousand.")
]
#only("2")[
#voiceover("Next, we write the numerator, which is six hundred twenty-five, as a regular number.")
]
#only("3")[
#voiceover("Finally, we add a decimal point before the last three digits of the numerator, giving us zero point six two five. And that's the correct answer!")
]
]