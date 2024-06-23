#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Converting Decimals to Fractions]
#v(40pt)
#only("1-")[What fraction is $0.25$ equal to?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $25/100$]#only("2-")[#text(fill:green)[a) $25/100$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $2.5/10$]#only("3-")[#text(fill:red)[b) $2.5/10$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $1/25$]#only("4-")[#text(fill:red)[c) $1/25$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $2.5/100$]#only("5-")[#text(fill:red)[d) $2.5/100$]]
#v(40pt)

#only("1")[#voiceover("Great job! The correct answer is a) $25/100$. Let's go through the options to understand why.")]
#only("2")[#voiceover("Option a) $25/100$ is correct. If you simplify $25/100$, you get $1/4$, which is equal to $0.25$.")]
#only("3")[#voiceover("Option b) $2.5/10$ is incorrect. $2.5/10$ simplifies to $1/4$, which is equal to $0.25$, but it is not in the simplest form.")]
#only("4")[#voiceover("Option c) $1/25$ is incorrect. $1/25$ is equal to $0.04$, not $0.25$.")]
#only("5")[#voiceover("Option d) $2.5/100$ is incorrect. $2.5/100$ simplifies to $1/40$, which is equal to $0.025$, not $0.25$.")]
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

#only("2")[
#voiceover("Next, remove the decimal point from the number.")]

#only("3")[
#voiceover("Then, divide the resulting number by a one followed by zeroes, where the number of zeroes equals the number of decimal places.")]
]



#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $0.25$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: 🔢 Count the decimal places in $0.25$. $arrow$ There are 2 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 25$.]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $100 arrow 25/100$.]
#only("1")[
#voiceover("Now let's apply these steps to the decimal number 0.25. To convert zero point twenty-five to a fraction, we first count the decimal places. There are two decimal places.")]

#only("2")[
#voiceover("Next, we remove the decimal point, which gives us twenty-five.")]

#only("3")[
#voiceover("Then, we divide twenty-five by a one followed by two zeroes. Since 0.25 has two decimal places, we divide it by one hundred. So we get twenty-five over one hundred. And that's it, we're done! The solution is twenty-five over one hundred.")]
]
