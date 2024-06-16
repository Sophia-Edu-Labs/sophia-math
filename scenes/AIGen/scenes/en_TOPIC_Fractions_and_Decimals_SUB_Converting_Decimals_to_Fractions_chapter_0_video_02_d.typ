#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Decimals to Fractions]
#v(40pt)
#only("1-")[What fraction is $0.5$ equal to?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $1/5$]#only("2-")[#text(fill:red)[a) $1/5$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $5/1$]#only("3-")[#text(fill:red)[b) $5/1$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) $5/10$]#only("4-")[#text(fill:green)[c) $5/10$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $5/100$]#only("5-")[#text(fill:red)[d) $5/100$]]
#v(40pt)

#only("1")[#voiceover("That's not correct. Let's go through the options to understand why the correct answer is c) five over ten.")]
#only("2")[#voiceover("Option a) one over five is incorrect. Zero point five is not equal to one over five, which is zero point two.")]
#only("3")[#voiceover("Option b) five over one is incorrect. Five over one equals five, which is much larger than zero point five.")]
#only("4")[#voiceover("Option c) five over ten is correct. If you simplify five over ten, you get one over two, which is equal to zero point five.")]
#only("5")[#voiceover("Option d) five over one hundred is incorrect. Five over one hundred simplifies to one over twenty, which is zero point zero five, not zero point five.")]
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
#text(size: 30pt, weight: "bold")[Example: Converting $0.5$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $0.5$. $arrow$There is 1 decimal place.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 5$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $10 arrow 5/10$ ]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number zero point five. To convert zero point five to a fraction, we first count the decimal places. There is one decimal place.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us five.")
]
#only("3")[
#voiceover("Then, we divide five by a one followed by one zero. Since zero point five has one decimal place, we divide it by ten. So we get five over ten. And that's it, we're done! The solution is five over ten.")
]
]