#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Decimals with Leading Zeros to Fractions]
#v(40pt)
#only("1-")[What fraction is $0.07$ equal to?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $7/1$]#only("2-")[#text(fill:red)[a) $7/1$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $7/100$]#only("3-")[#text(fill:green)[b) $7/100$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $7/1000$]#only("4-")[#text(fill:red)[c) $7/1000$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $7/10$]#only("5-")[#text(fill:red)[d) $7/10$]]
#v(40pt)

#only("1")[#voiceover("Great job on answering the question! Let's go through the options to understand why the correct answer is b) 7 over 100.")]
#only("2")[#voiceover("Option a) 7 over 1 is incorrect. 0.07 is not equal to 7 over 1, which is simply 7.")]
#only("3")[#voiceover("Option b) 7 over 100 is correct. If you convert 7 over 100 to a decimal, you get 0.07.")]
#only("4")[#voiceover("Option c) 7 over 1000 is incorrect. 7 over 1000 equals 0.007, which is much smaller than 0.07.")]
#only("5")[#voiceover("Option d) 7 over 10 is also incorrect. 7 over 10 equals 0.7, which is much larger than 0.07.")]
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
#voiceover("Before we solve the exercise, let's quickly review the steps to convert decimals to fractions. First, count the number of decimal places in the decimal number.")]
]
#only("2")[
#voiceover("Next, remove the decimal point from the number.")]
]
#only("3")[
#voiceover("Then, divide the resulting number by a one followed by zeroes, where the number of zeroes equals the number of decimal places.")]
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $0.07$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $0.07$. $arrow$ There are 2 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 7$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $100 arrow 7/100$ ]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number 0.07. First, we count the decimal places. There are two decimal places.")]
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us seven.")]
]
#only("3")[
#voiceover("Then, we divide seven by a one followed by two zeroes. Since 0.07 has two decimal places, we divide it by one hundred. So we get seven over one hundred. And that's it, we're done! The solution is 7 over 100.")]
]
]