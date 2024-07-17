#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Absolute and Relative Frequency]
#v(40pt)
#only("1-")[- Comparing the two regions, which has a higher relative frequency of deaths?]
#v(20pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) First region]#only("2-")[#text(fill:red)[a) First region]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Second region]#only("3-")[#text(fill:red)[b) Second region]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Both are the same]#only("4-")[#text(fill:green)[c) Both are the same]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Insufficient data]#only("5-")[#text(fill:red)[d) Insufficient data]]
#only("1")[#voiceover("Great job! Let's go through the options to understand why 'c' is the correct answer.")]
#only("2")[#voiceover("Option a) First region is incorrect. The relative frequency of deaths in the first region is not higher.")]
#only("3")[#voiceover("Option b) Second region is also incorrect. The relative frequency of deaths in the second region is not higher either.")]
#only("4")[#voiceover("Option c) Both are the same is correct. The relative frequency of deaths in both regions is the same, which is 0.015.")]
#only("5")[#voiceover("Option d) Insufficient data is incorrect. We have enough data to determine the relative frequency of deaths in both regions.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Relative Frequency Calculation]
#v(40pt)
#only("1-")[- Relative frequency is calculated as the ratio of the number of occurrences to the total number of observations.]
#v(20pt)
#only("2-")[- For the first region: $f_1 = 15 / 1000 = 0.015$]
#v(20pt)
#only("3-")[- For the second region: $f_2 = 30 / 2000 = 0.015$]
#only("1")[#voiceover("To calculate the relative frequency, we use the ratio of the number of occurrences to the total number of observations.")]
#only("2")[#voiceover("For the first region, the relative frequency is calculated as 15 divided by 1000, which equals 0.015.")]
#only("3")[#voiceover("For the second region, the relative frequency is calculated as 30 divided by 2000, which also equals 0.015.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Both regions have the same relative frequency of deaths, which is 0.015.]
#v(20pt)
#only("2-")[- Therefore, the correct answer is option c) Both are the same.]
#only("1")[#voiceover("In conclusion, both regions have the same relative frequency of deaths, which is 0.015.")]
#only("2")[#voiceover("Therefore, the correct answer to the question is option c) Both are the same.")]
]