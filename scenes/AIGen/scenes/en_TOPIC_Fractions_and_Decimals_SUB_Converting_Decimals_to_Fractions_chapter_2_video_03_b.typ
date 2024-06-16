#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Decimals to Fractions]
#v(40pt)
#only("1-")[What fraction is $0.75$ equal to?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $75/10$]#only("2-")[#text(fill:red)[a) $75/10$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $75/100$]#only("3-")[#text(fill:green)[b) $75/100$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $7.5/100$]#only("4-")[#text(fill:red)[c) $7.5/100$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $7.5/10$]#only("5-")[#text(fill:red)[d) $7.5/10$]]
#v(40pt)

#only("1")[#voiceover("Great job on answering the question! Let's go through the options to understand why the correct answer is b) seventy-five over one hundred.")]
#only("2")[#voiceover("Option a) seventy-five over ten is incorrect. Seventy-five over ten simplifies to seven point five, which is much larger than zero point seventy-five.")]
#only("3")[#voiceover("Option b) seventy-five over one hundred is correct. If you simplify seventy-five over one hundred, you get three over four, which is equal to zero point seventy-five.")]
#only("4")[#voiceover("Option c) seven point five over one hundred is incorrect. Seven point five over one hundred simplifies to zero point zero seventy-five, which is much smaller than zero point seventy-five.")]
#only("5")[#voiceover("Option d) seven point five over ten is also incorrect. Seven point five over ten simplifies to zero point seventy-five, but it is not in its simplest form.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Decimals to Fractions]
#v(40pt)
#only("1-")[- Step 1: Count the decimal places. 🔢]
#v(20pt)
#only("2-")[- Step 2: Remove the decimal point. ✂️]
#v(20pt)
#only("3-")[- Step 3: Divide by a power of ten. ➗]
#only("1")[
#voiceover("Before we solve the exercise, a quick reminder of the steps to convert decimals to fractions. First, count the number of decimal places in the decimal number.")
]
#only("2")[
#voiceover("Next, remove the decimal point from the number.")
]
#only("3")[
#voiceover("Then, divide the resulting number by a one followed by zeroes, where the number of zeroes equals the number of decimal places.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $0.75$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $0.75$. $arrow$There are 2 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 75$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $100 arrow 75/100$ ]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number zero point seventy-five ... To convert zero point seventy-five to a fraction, we first count the decimal places. There are two decimal places.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us seventy-five.")
]
#only("3")[
#voiceover("Then, we divide seventy-five by a one followed by two zeroes. Since zero point seventy-five has two decimal places, we divide it by one hundred. So we get seventy-five over one hundred. And that's it, we're done! The solution is seventy-five over one hundred.")
]
]