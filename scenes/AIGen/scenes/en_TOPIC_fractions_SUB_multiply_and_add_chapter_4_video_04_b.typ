#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("That's okay! Let's go through the correct solution step by step to understand how to arrive at the right answer.")
]

#text(size: 30pt, weight: "bold")[Changing Fraction Denominator]

#v(40pt)

#only("2-")[#text()[Original fraction: $4/7$]]
#v(10pt)
#only("3-")[#text()[Target denominator: $14$]]

#only("2")[
#voiceover("We start with the original fraction, four-sevenths.")
]

#only("3")[
#voiceover("Our goal is to change this fraction to an equivalent one with a denominator of fourteen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Multiplier]

#v(40pt)

#only("1-")[#text()[Target denominator ÷ Original denominator]]
#v(10pt)
#only("2-")[#text()[$14 ÷ 7 = 2$]]

#only("1")[
#voiceover("To find the number we need to multiply both the numerator and denominator by, we divide the target denominator by the original denominator.")
]

#only("2")[
#voiceover("Fourteen divided by seven equals two. This means we need to multiply both the numerator and denominator by two.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying the Fraction]

#v(40pt)

#only("1-")[#text()[$4/7 × 2/2$]]
#v(10pt)
#only("2-")[#text()[$= (4 × 2) / (7 × 2)$]]
#v(10pt)
#only("3-")[#text()[$= 8/14$]]

#only("1")[
#voiceover("Now, we multiply our original fraction, four-sevenths, by two-halves. Remember, multiplying by two-halves is the same as multiplying by one, so this doesn't change the value of our fraction.")
]

#only("2")[
#voiceover("This gives us four times two in the numerator, and seven times two in the denominator.")
]

#only("3")[
#voiceover("Simplifying this, we get eight-fourteenths, which is our final answer.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verification]

#v(40pt)

#only("1-")[#text()[Original fraction: $4/7 = 0.571428...$]]
#v(10pt)
#only("2-")[#text()[New fraction: $8/14 = 0.571428...$]]

#only("1")[
#voiceover("To verify our answer, we can convert both fractions to decimals. The original fraction, four-sevenths, is approximately zero point five seven one four two eight.")
]

#only("2")[
#voiceover("Our new fraction, eight-fourteenths, also equals zero point five seven one four two eight. This confirms that we've found an equivalent fraction with the desired denominator.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaway]

#v(40pt)

#only("1-")[- To change a fraction's denominator, multiply both numerator and denominator by the same number]
#v(10pt)
#only("2-")[- This number is: (New denominator) ÷ (Original denominator)]

#only("1")[
#voiceover("The key takeaway here is that to change a fraction's denominator while keeping its value the same, we multiply both the numerator and denominator by the same number.")
]

#only("2")[
#voiceover("This number is found by dividing the new denominator by the original denominator. Remember, this method works for any fraction and any new denominator you want to change to!")
]
]