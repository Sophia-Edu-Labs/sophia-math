#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job on recognizing the correct answer! Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Converting Complex Decimals to Fractions]

#v(40pt)

#only("2-")[#text()[$6.789$]]
// The decimal number 6.789 is shown from slide 2 onward

#only("2")[
#voiceover("We start with the decimal number six point seven eight nine.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Decimals to Fractions]

#v(40pt)

#only("1-")[- Step 1: Count the decimal places. 🔢]
#v(20pt)
#only("2-")[- Step 2: Remove the decimal point. ✂️]
#v(20pt)
#only("3-")[- Step 3: Divide by a power of ten. ➗]
#v(20pt)
#only("4-")[- Step 4: Simplify the fraction. 🧮]

#only("1")[
#voiceover("Before we solve the exercise, let's quickly review the steps to convert decimals to fractions. First, count the number of decimal places in the decimal number.")
]
#only("2")[
#voiceover("Next, remove the decimal point from the number.")
]
#only("3")[
#voiceover("Then, divide the resulting number by a one followed by zeroes, where the number of zeroes equals the number of decimal places.")
]
#only("4")[
#voiceover("Finally, simplify the fraction if possible.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $6.789$ to a Fraction]

#v(40pt)

#only("1-")[- Step 1: 🔢 Count the decimal places in $6.789$. $arrow$ There are 3 decimal places.]
#v(20pt)
#only("2-")[- Step 2: ✂️ Remove the decimal point: $arrow 6789$.]
#v(20pt)
#only("3-")[- Step 3: ➗ Divide by $1000 arrow 6789/1000$.]
#v(20pt)
#only("4-")[- Step 4: 🧮 Simplify the fraction: $arrow 6789/1000$.]

#only("1")[
#voiceover("Now let's apply these steps to the decimal number six point seven eight nine. First, we count the decimal places. There are three decimal places.")
]
#only("2")[
#voiceover("Next, we remove the decimal point, which gives us six thousand seven hundred eighty-nine.")
]
#only("3")[
#voiceover("Then, we divide six thousand seven hundred eighty-nine by a one followed by three zeroes, since six point seven eight nine has three decimal places. So we get six thousand seven hundred eighty-nine over one thousand.")
]
#only("4")[
#voiceover("Finally, we check if the fraction can be simplified. In this case, six thousand seven hundred eighty-nine over one thousand is already in its simplest form. So, the fraction equivalent of six point seven eight nine is six thousand seven hundred eighty-nine over one thousand.")
]
]