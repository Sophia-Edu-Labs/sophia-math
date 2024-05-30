#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Bases]
#v(40pt)
#only("1-")[Which of the following is #text(weight: "bold")[NOT] a property of bases?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) Bitter taste]#only("2-")[#text(fill:green)[a) Bitter taste]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Conduct electricity]#only("3-")[#text(fill:green)[b) Conduct electricity]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) React with metals to produce hydrogen gas]#only("4-")[#text(fill:red)[c) React with metals to produce hydrogen gas]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) Feel slippery]#only("5-")[#text(fill:green)[d) Feel slippery]]
#only("1")[#voiceover("Not quite. Let's look at the correct solution.")]
#only("2")[#voiceover("Bases indeed have a bitter taste, so this is a property of bases.")]
#only("3")[#voiceover("Bases can also conduct electricity, so this is another property of bases.")]
#only("4")[#voiceover("However, reacting with metals to produce hydrogen gas is a property of acids, not bases. So this is the correct answer for what is NOT a property of bases.")]
#only("5")[#voiceover("Lastly, bases do feel slippery, so this is a property of bases as well.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Let's review the properties of bases 🧪:]
#v(20pt)
#only("2-")[- Bitter taste 😝]
#only("3-")[- Conduct electricity ⚡]
#only("4-")[- Feel slippery 🧼]
#v(40pt)
#only("5-")[Now, let's consider the properties of acids 🍋:]

#only("1")[#voiceover("To understand why this is the correct answer, let's review the properties of bases.")]
#only("2")[#voiceover("Bases have a bitter taste.")]
#only("3")[#voiceover("They can conduct electricity.")]
#only("4")[#voiceover("And they feel slippery to the touch.")]
#only("5")[#voiceover("Now, let's consider the properties of acids for comparison.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Now, let's consider the properties of acids 🍋:]
#v(20pt)
#only("2-")[- Sour taste 😖]
#only("3-")[- Conduct electricity ⚡]
#only("4-")[- React with metals to produce hydrogen gas 💥]
#v(40pt)
#only("5-")[Therefore, the property that is unique to acids and not bases is:]
#v(20pt)
#only("6-")[#text(fill:red)[React with metals to produce hydrogen gas 💥]]

#only("1")[#voiceover("Acids have a sour taste, unlike the bitter taste of bases.")]
#only("2")[#voiceover("They also conduct electricity, just like bases.")]
#only("3")[#voiceover("But uniquely, acids react with metals to produce hydrogen gas.")]
#only("4")[#voiceover("So when we look at the options...")]
#only("5")[#voiceover("...we can see that reacting with metals to produce hydrogen gas is the only property that is specific to acids and not shared by bases. Therefore, it's the correct answer for what is NOT a property of bases.")]
]