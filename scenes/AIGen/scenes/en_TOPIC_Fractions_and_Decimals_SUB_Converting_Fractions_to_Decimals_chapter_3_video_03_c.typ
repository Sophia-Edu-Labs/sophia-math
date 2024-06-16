#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Fractions to Decimals]
#v(40pt)
What is $3/4$ as a decimal?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $0.34$]#only("2-")[#text(fill:red)[a) $0.34$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $0.43$]#only("3-")[#text(fill:red)[b) $0.43$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) $0.75$]#only("4-")[#text(fill:green)[c) $0.75$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $0.57$]#only("5-")[#text(fill:red)[d) $0.57$]]
#v(40pt)

#only("1")[#voiceover("Great job! Let's go through the options to understand why the correct answer is c) 0.75.")]
#only("2")[#voiceover("Option a) 0.34 is incorrect. When you divide 3 by 4, you do not get 0.34.")]
#only("3")[#voiceover("Option b) 0.43 is incorrect. 0.43 is not the result of dividing 3 by 4.")]
#only("4")[#voiceover("Option c) 0.75 is correct. When you divide 3 by 4, you get 0.75.")]
#only("5")[#voiceover("Option d) 0.57 is incorrect. 0.57 is not the result of dividing 3 by 4.")]
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
#voiceover("Next, write down the result as a decimal.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $3/4$ to a Decimal]
#v(40pt)
#only("1-")[- Step 1: Divide $3$ by $4$. ➗]
#v(20pt)
#only("2-")[- Step 2: Result is $0.75$. ✍️]
#only("1")[
#voiceover("Now let's apply these steps to the fraction three over four. First, we divide three by four.")
]
#only("2")[
#voiceover("The result is zero point seventy-five. And that's it, we're done! The solution is zero point seventy-five.")
]
]