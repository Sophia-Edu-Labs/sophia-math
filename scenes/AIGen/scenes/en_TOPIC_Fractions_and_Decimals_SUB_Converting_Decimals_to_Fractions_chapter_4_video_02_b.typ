#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Decimals with Leading Zeros to Fractions]
#v(40pt)
#only("1-")[What fraction is $0.05$ equal to?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $5/1000$]#only("2-")[#text(fill:red)[a) $5/1000$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $5/100$]#only("3-")[#text(fill:green)[b) $5/100$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $5/10$]#only("4-")[#text(fill:red)[c) $5/10$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $5/1$]#only("5-")[#text(fill:red)[d) $5/1$]]
#v(40pt)

#only("1")[#voiceover("Great job on answering the question correctly! Let's go through the options to understand why the correct answer is b) $5/100$.")]
#only("2")[#voiceover("Option a) $5/1000$ is incorrect. $0.05$ is not equal to $5/1000$, which simplifies to $1/200$.")]
#only("3")[#voiceover("Option b) $5/100$ is correct. If you simplify $5/100$, you get $1/20$, which is equal to $0.05$.")]
#only("4")[#voiceover("Option c) $5/10$ is incorrect. $5/10$ simplifies to $1/2$, which is $0.5$, not $0.05$.")]
#only("5")[#voiceover("Option d) $5/1$ is incorrect. $5/1$ equals $5$, which is much larger than $0.05$.")]
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
#voiceover("Before we solve the exercise, let's quickly review the steps to convert decimals to fractions. First, count the number of decimal places in the decimal number.")
]
#only("2")[
#voiceover("Next, remove the decimal point from the number.")
]
#only("3")[
#voiceover("Then, divide the resulting number by a one followed by zeroes, where the number of zeroes equals the number of decimal places.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $0.05$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $0.05$. $arrow$There are 2 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 5$. ]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $100 arrow 5/100$ ]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number 0.05. To convert zero point zero five to a fraction, we first count the decimal places. There are two decimal places.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us five.")
]
#only("3")[
#voiceover("Then, we divide five by a one followed by two zeroes. Since 0.05 has two decimal places, we divide it by one hundred. So we get five over one hundred. And that's it, we're done! The solution is 5 over 100.")
]
]