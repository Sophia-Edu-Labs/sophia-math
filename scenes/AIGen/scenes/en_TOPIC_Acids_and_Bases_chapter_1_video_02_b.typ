#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Acids]
#v(40pt)
#only("1-")[Which of the following is a property of acids?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) Bitter taste]#only("2-")[#text(fill:red)[a) Bitter taste]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Conduct electricity]#only("3-")[#text(fill:green)[b) Conduct electricity]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) Feel slippery]#only("4-")[#text(fill:red)[c) Feel slippery]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("A bitter taste is not a property of acids. Acids actually have a sour taste.")]
#only("3")[#voiceover("Conducting electricity is indeed a property of acids. Acids can conduct electric current due to the presence of mobile ions in solution.")]
#only("4")[#voiceover("Feeling slippery is not a property of acids. In fact, it is a property of bases, not acids.")]
#only("5")[#voiceover("Since one of the options, conducting electricity, is a property of acids, 'none of the above' is not the correct answer.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties of Acids]
#v(40pt)
#only("1-")[Acids have several distinct properties:]
#v(20pt)
#only("2-")[- Sour taste 😋]
#only("3-")[- Conduct electricity ⚡]
#only("4-")[- React with metals to produce hydrogen gas 💨]
#v(40pt)
#only("5-")[These properties are due to the presence of H+ ions in acid solutions.]

#only("1")[#voiceover("Let's review the key properties of acids.")]
#only("2")[#voiceover("Acids have a sour taste, like lemons or vinegar.")]
#only("3")[#voiceover("They can conduct electricity because they contain mobile ions in solution.")]
#only("4")[#voiceover("Acids react with metals to produce hydrogen gas. For example, when you add hydrochloric acid to zinc, it produces hydrogen gas.")]
#only("5")[#voiceover("All these properties are due to the presence of hydrogen ions, or H+ ions, in acid solutions. It's these H+ ions that give acids their unique characteristics.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Acid Ionization]
#v(40pt)
#only("1-")[Acids ionize in water to produce H+ ions:]
#v(20pt)
#only("2-")[- $"HA"$ $arrow.r$ $"H"^+ + "A"^-$]
#v(40pt)
#only("3-")[The higher the concentration of H+ ions, the stronger the acid.]

#only("1")[#voiceover("Acids ionize in water to produce hydrogen ions.")]
#only("2")[#voiceover("For a generic acid HA, it ionizes in water to produce a hydrogen ion H+ and an anion A-. This is the general ionization reaction for acids.")]
#only("3")[#voiceover("The strength of an acid depends on the extent of this ionization. The higher the concentration of H+ ions produced, the stronger the acid.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Acids have a sour taste, conduct electricity, and react with metals to produce hydrogen gas 🍋⚡💨]
#v(20pt)
#only("2-")[- These properties are due to the presence of H+ ions in solution 🔍]
#v(20pt)
#only("3-")[- Acids ionize in water to produce H+ ions: $"HA" $arrow.r$ "H"^+ + "A"^-$ 💧]
#v(20pt)
#only("4-")[- The higher the concentration of H+ ions, the stronger the acid 💪]

#only("1")[#voiceover("To summarize, acids have a sour taste, conduct electricity, and react with metals to produce hydrogen gas.")]
#only("2")[#voiceover("These properties are due to the presence of hydrogen ions in acid solutions.")]
#only("3")[#voiceover("Acids ionize in water to produce these hydrogen ions, according to the general reaction HA gives H+ and A-.")]
#only("4")[#voiceover("And the higher the concentration of hydrogen ions produced, the stronger the acid. Keep up the great work in your chemistry studies!")]
]