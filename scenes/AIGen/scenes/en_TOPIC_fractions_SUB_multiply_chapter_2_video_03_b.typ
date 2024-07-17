#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)
#only("1-")[- $2/3$ * $3/4$ * $4/5$]
#only("1")[#voiceover("That's okay! Let's go through the correct solution step-by-step. We need to multiply the fractions two thirds, three fourths, and four fifths.")]
#v(20pt)
#only("2-")[- $2/3$ * $3/4$ * $4/5$ = $2 * 3 * 4 / (3 * 4 * 5)$]
#only("2")[#voiceover("First, we multiply the numerators together and the denominators together. So, two times three times four in the numerator, and three times four times five in the denominator.")]
#v(20pt)
#only("3-")[- $2 * 3 * 4 / (3 * 4 * 5)$ = $24/60$]
#only("3")[#voiceover("Next, we perform the multiplication. Two times three times four equals twenty-four, and three times four times five equals sixty. So, we get twenty-four sixtieths.")]
#v(20pt)
#only("4-")[- $24/60$ = $2/5$]
#only("4")[#voiceover("Finally, we simplify the fraction. Both twenty-four and sixty can be divided by twelve. Twenty-four divided by twelve is two, and sixty divided by twelve is five. So, the simplified fraction is two fifths.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiple Choice Explanation]
#v(40pt)
#only("1-")[- a) $24/60$]
#only("2-")[#text(fill:green)[- a) $24/60$]]
#v(10pt)
#only("1-2")[- b) $20/60$]
#only("3-")[#text(fill:red)[- b) $20/60$]]
#v(10pt)
#only("1-3")[- c) $18/60$]
#only("4-")[#text(fill:red)[- c) $18/60$]]
#v(10pt)
#only("1-4")[- d) $24/45$]
#only("5-")[#text(fill:red)[- d) $24/45$]]
#v(40pt)
#only("1")[#voiceover("Let's review the multiple choice options.")]
#only("2")[#voiceover("Option a, twenty-four sixtieths, is correct. This is the result before simplification.")]
#only("3")[#voiceover("Option b, twenty sixtieths, is incorrect. This result does not come from multiplying the given fractions.")]
#only("4")[#voiceover("Option c, eighteen sixtieths, is also incorrect. This result does not come from multiplying the given fractions.")]
#only("5")[#voiceover("Option d, twenty-four forty-fifths, is incorrect. This result does not come from multiplying the given fractions.")]
]