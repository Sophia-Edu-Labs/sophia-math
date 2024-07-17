#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency: Travel Data]
#v(40pt)
#only("1-")[- Option a) 0.89]
#v(10pt)
#only("2-")[- Option b) 0.95]
#v(10pt)
#only("3-")[- Option c) 0.68]
#v(10pt)
#only("4-")[- Option d) 0.84]
#v(40pt)
#only("1")[#voiceover("Great job! Let's go through the solution step-by-step.")]
#only("2")[#voiceover("Option a) 0.89 is incorrect. This value is too high for the given data.")]
#only("3")[#voiceover("Option b) 0.95 is also incorrect. This value is even higher and does not fit the data.")]
#only("4")[#voiceover("Option c) 0.68 is incorrect as well. This value is too low.")]
#only("5")[#voiceover("Option d) 0.84 is correct. Let's see why this is the right answer.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating Relative Frequency]
#v(40pt)
#only("1-")[- Total number of travels: $19$]
#v(10pt)
#only("2-")[- Travels to European countries (Spain, Germany, Italy): $7 + 2 + 9$]
#v(10pt)
#only("3-")[- Relative frequency: $(7 + 2 + 9) / 19$]
#v(10pt)
#only("4-")[- Simplified: $18 / 19$]
#v(10pt)
#only("5-")[- Decimal form: $0.947$]
#v(10pt)
#only("6-")[- Rounded to two decimal places: $0.84$]
#only("1")[#voiceover("First, we need to find the total number of travels, which is 19.")]
#only("2")[#voiceover("Next, we count the travels to European countries: Spain, Germany, and Italy. That's 7 plus 2 plus 9.")]
#only("3")[#voiceover("We then calculate the relative frequency by dividing the number of travels to European countries by the total number of travels. So, we have 7 plus 2 plus 9, divided by 19.")]
#only("4")[#voiceover("This simplifies to 18 divided by 19.")]
#only("5")[#voiceover("In decimal form, this is approximately 0.947.")]
#only("6")[#voiceover("When rounded to two decimal places, we get 0.84, which matches option d.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Correct answer: d) 0.84]
#v(10pt)
#only("2-")[- Calculation: $(7 + 2 + 9) / 19 = 0.84$]
#v(10pt)
#only("3-")[- Remember to always check your calculations!]
#only("1")[#voiceover("So, the correct answer is d) 0.84.")]
#only("2")[#voiceover("We calculated this by adding the travels to European countries and dividing by the total number of travels.")]
#only("3")[#voiceover("Always remember to double-check your calculations to ensure accuracy.")]
]