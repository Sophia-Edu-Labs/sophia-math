#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency of Drawing a 2]
#v(40pt)
#only("1-")[- Option a) $0.1$]
#v(10pt)
#only("1-")[- Option b) $0.15$]
#v(10pt)
#only("1-")[- Option c) $0.2$]
#v(10pt)
#only("1-")[- Option d) $0.25$]
#only("1")[#voiceover("Great job on answering the question! Let's go through the solution step-by-step.")]
#only("2")[#voiceover("The correct answer is option c, 0.2. Let's see why this is the case.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating Relative Frequency]
#v(40pt)
#only("1-")[- The relative frequency is calculated as the ratio of the number of favorable outcomes to the total number of outcomes.]
#v(10pt)
#only("2-")[- In this case, the number of times a 2 is drawn is $4$.]
#v(10pt)
#only("3-")[- The total number of draws is $20$.]
#v(10pt)
#only("4-")[- Therefore, the relative frequency is $4/20$.]
#only("1")[#voiceover("To find the relative frequency, we need to calculate the ratio of the number of favorable outcomes to the total number of outcomes.")]
#only("2")[#voiceover("In this case, the number of times a 2 is drawn is 4.")]
#only("3")[#voiceover("The total number of draws is 20.")]
#only("4")[#voiceover("Therefore, the relative frequency is 4 divided by 20.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying the Fraction]
#v(40pt)
#only("1-")[- $4/20$ can be simplified by dividing both the numerator and the denominator by their greatest common divisor, which is $4$.]
#v(10pt)
#only("2-")[- This gives us $1/5$.]
#v(10pt)
#only("3-")[- Converting $1/5$ to a decimal, we get $0.2$.]
#only("1")[#voiceover("We can simplify the fraction 4 over 20 by dividing both the numerator and the denominator by their greatest common divisor, which is 4.")]
#only("2")[#voiceover("This gives us 1 over 5.")]
#only("3")[#voiceover("Converting 1 over 5 to a decimal, we get 0.2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Reviewing the Options]
#v(40pt)
#only("-1")[- Option a) $0.1$]#only("2-")[#text(fill:red)[- Option a) $0.1$]]
#v(10pt)
#only("-2")[- Option b) $0.15$]#only("3-")[#text(fill:red)[- Option b) $0.15$]]
#v(10pt)
#only("-3")[- Option c) $0.2$]#only("4-")[#text(fill:green)[- Option c) $0.2$]]
#v(10pt)
#only("-4")[- Option d) $0.25$]#only("5-")[#text(fill:red)[- Option d) $0.25$]]
#only("1")[#voiceover("Now, let's review the options.")]
#only("2")[#voiceover("Option a, 0.1, is incorrect. It does not match our calculation.")]
#only("3")[#voiceover("Option b, 0.15, is also incorrect. This is not the correct relative frequency.")]
#only("4")[#voiceover("Option c, 0.2, is correct. This matches our calculation.")]
#only("5")[#voiceover("Option d, 0.25, is incorrect. This is not the correct relative frequency.")]
]