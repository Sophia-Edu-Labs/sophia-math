#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Numbers Greater than 1 to Fractions]
#v(40pt)
#only("1-")[What fraction is $4.75$ equal to?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $475/100$]#only("2-")[#text(fill:green)[a) $475/100$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $4.75/10$]#only("3-")[#text(fill:red)[b) $4.75/10$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $47.5/10$]#only("4-")[#text(fill:red)[c) $47.5/10$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $475/10$]#only("5-")[#text(fill:red)[d) $475/10$]]
#v(40pt)

#only("1")[#voiceover("That's right, well done! Let's go through the options to understand why the correct answer is a) 475 over 100.")]
#only("2")[#voiceover("Option a) 475 over 100 is correct. If you simplify 475 over 100, you get 4.75.")]
#only("3")[#voiceover("Option b) 4.75 over 10 is incorrect. Dividing 4.75 by 10 gives 0.475, which is not equal to 4.75.")]
#only("4")[#voiceover("Option c) 47.5 over 10 is incorrect. Dividing 47.5 by 10 gives 4.75, but the fraction is not in its simplest form.")]
#only("5")[#voiceover("Option d) 475 over 10 is incorrect. Dividing 475 by 10 gives 47.5, which is much larger than 4.75.")]
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
#text(size: 30pt, weight: "bold")[Example: Converting $4.75$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $4.75$. $arrow$There are 2 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 475$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $100 arrow 475/100$ ]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number 4.75 ... To convert four point seven five to a fraction, we first count the decimal places. There are two decimal places.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us four hundred seventy-five.")
]
#only("3")[
#voiceover("Then, we divide four hundred seventy-five by a one followed by two zeroes. Since 4.75 has two decimal places, we divide it by one hundred. So we get four hundred seventy-five over one hundred. And that's it, we're done! The solution is 475 over 100.")
]
]