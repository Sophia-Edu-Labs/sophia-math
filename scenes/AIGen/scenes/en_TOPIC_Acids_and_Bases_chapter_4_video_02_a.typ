#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pH and pOH Relationship]
#v(40pt)
#only("1-")[What is the relationship between pH and pOH?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) pH + pOH = 7]#only("2-")[#text(fill:red)[a) pH + pOH = 7]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) pH + pOH = 14]#only("3-")[#text(fill:green)[b) pH + pOH = 14]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) pH - pOH = 7]#only("4-")[#text(fill:red)[c) pH - pOH = 7]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) pH - pOH = 14]#only("5-")[#text(fill:red)[d) pH - pOH = 14]]
#only("1")[#voiceover("That's not correct. Let's look at the right solution.")]
#only("2")[#voiceover("Choice a), pH plus pOH equals 7, is incorrect. The sum of pH and pOH is actually 14 at 25°C.")]
#only("3")[#voiceover("Choice b), pH plus pOH equals 14, is the correct answer. At 25°C, the sum of pH and pOH in any aqueous solution is always 14.")]
#only("4")[#voiceover("Choice c), pH minus pOH equals 7, is incorrect. pH and pOH are related by addition, not subtraction.")]
#only("5")[#voiceover("Finally, choice d), pH minus pOH equals 14, is also incorrect for the same reason as choice c). pH and pOH are related by addition, not subtraction.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[- pH measures the concentration of $H+$ ions]
#v(20pt)
#only("2-")[- pOH measures the concentration of $"OH"-$ ions]
#v(20pt)
#only("3-")[- In pure water at 25°C: $[H+] dot ["OH"-] = 1 dot 10^(-14)$]
#v(20pt)
#only("4-")[- Taking the negative logarithm of both sides:]
#v(20pt)
#only("5-")[  $-log([H+]) - log(["OH"-]) = -log(1 dot 10^(-14))$]
#v(20pt)
#only("6-")[  $"pH" + "pOH" = 14$]

#only("1")[#voiceover("Let's understand why pH plus pOH equals 14. First, recall that pH measures the concentration of hydrogen ions, H plus, in a solution.")]
#only("2")[#voiceover("On the other hand, pOH measures the concentration of hydroxide ions, OH minus.")]
#only("3")[#voiceover("In pure water at 25°C, the product of the hydrogen ion concentration and the hydroxide ion concentration is always equal to 1 times 10 to the power of negative 14.")]
#only("4")[#voiceover("If we take the negative logarithm of both sides of this equation...")]
#only("5")[#voiceover("We get negative log of H plus concentration minus log of OH minus concentration equals negative log of 1 times 10 to the power of negative 14.")]
#only("6")[#voiceover("Simplifying this, and recognizing that negative log of H plus concentration is pH and negative log of OH minus concentration is pOH, we arrive at the relationship: pH plus pOH equals 14.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- pH measures $[H+]$, pOH measures $["OH"-]$ 🧪]
#v(20pt)
#only("2-")[- In pure water at 25°C: $[H+] dot ["OH"-] = 1 dot 10^(-14)$ 💧]
#v(20pt)
#only("3-")[- Taking $-log$ of both sides 📏]
#v(20pt)
#only("4-")[  $"pH" + "pOH" = 14$ ✅]

#only("1")[#voiceover("To summarize, pH measures the hydrogen ion concentration, while pOH measures the hydroxide ion concentration.")]
#only("2")[#voiceover("In pure water at 25°C, the product of these concentrations is always 1 times 10 to the power of negative 14.")]
#only("3")[#voiceover("Taking the negative logarithm of both sides of this equation...")]
#only("4")[#voiceover("Leads us to the important relationship: pH plus pOH equals 14. Remember this relationship, as it's crucial for understanding the behavior of acids and bases in aqueous solutions.")]
]