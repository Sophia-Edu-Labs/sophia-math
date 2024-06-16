#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Numbers Greater than 1 to Fractions]
#v(40pt)
#only("1-")[What fraction is $2.5$ equal to?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $25/10$]#only("2-")[#text(fill:red)[a) $25/10$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $2.5/1$]#only("3-")[#text(fill:red)[b) $2.5/1$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) $5/2$]#only("4-")[#text(fill:green)[c) $5/2$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $25/100$]#only("5-")[#text(fill:red)[d) $25/100$]]
#v(40pt)

#only("1")[#voiceover("That's right, well done! Let's go through the options to understand why the correct answer is c) five over two.")]
#only("2")[#voiceover("Option a) twenty-five over ten is incorrect. While twenty-five divided by ten does equal two point five, it is not in its simplest form.")]
#only("3")[#voiceover("Option b) two point five over one is incorrect. It is not a proper fraction, as it still contains a decimal.")]
#only("4")[#voiceover("Option c) five over two is correct. If you divide five by two, you get two point five.")]
#only("5")[#voiceover("Option d) twenty-five over one hundred is incorrect. Twenty-five over one hundred simplifies to one fourth, which is zero point two five, not two point five.")]
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
#text(size: 30pt, weight: "bold")[Example: Converting $2.5$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $2.5$. $arrow$There is 1 decimal place.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 25$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $10 arrow 25/10$ ]
#v(20pt)
#only("4-")[- Simplify: $25/10 = 5/2$]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number two point five. To convert two point five to a fraction, we first count the decimal places. There is one decimal place.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us twenty-five.")
]
#only("3")[
#voiceover("Then, we divide twenty-five by a one followed by one zero. Since two point five has one decimal place, we divide it by ten. So we get twenty-five over ten.")
]
#only("4")[
#voiceover("Finally, we simplify twenty-five over ten by dividing both the numerator and the denominator by their greatest common divisor, which is five. This gives us five over two. And that's it, we're done! The solution is five over two.")
]
]