#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Decimals to Fractions]
#v(40pt)
#only("1-")[What fraction is $0.2$ equal to?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $2/1$]#only("2-")[#text(fill:red)[a) $2/1$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $2/10$]#only("3-")[#text(fill:green)[b) $2/10$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $2/100$]#only("4-")[#text(fill:red)[c) $2/100$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $1/2$]#only("5-")[#text(fill:red)[d) $1/2$]]
#v(40pt)

#only("1")[#voiceover("That's not correct. Let's go through the options to understand why the correct answer is b) $2/10$.")]
#only("2")[#voiceover("Option a) $2/1$ is incorrect. $0.2$ is not equal to $2/1$, which is $2$.")]
#only("3")[#voiceover("Option b) $2/10$ is correct. If you simplify $2/10$, you get $1/5$, which is equal to $0.2$.")]
#only("4")[#voiceover("Option c) $2/100$ is incorrect. $2/100$ simplifies to $1/50$, which is $0.02$, not $0.2$.")]
#only("5")[#voiceover("Option d) $1/2$ is incorrect. $1/2$ equals $0.5$, which is larger than $0.2$.")]
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
#text(size: 30pt, weight: "bold")[Example: Converting $0.2$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $0.2$. $arrow$There is 1 decimal place.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 2$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $10 arrow 2/10$ ]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number 0.2 ... To convert zero point two to a fraction, we first count the decimal places. There is one decimal place.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us two.")
]
#only("3")[
#voiceover("Then, we divide two by a one followed by one zero. Since 0.2 has one decimal place, we divide it by ten. So we get two over ten. And that's it, we're done! The solution is two over ten.")
]
]