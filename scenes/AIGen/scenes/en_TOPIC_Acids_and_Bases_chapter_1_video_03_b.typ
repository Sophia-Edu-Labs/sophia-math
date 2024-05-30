#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Acids and Metals]
#v(40pt)
What gas is produced when acids react with metals?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Oxygen]#only("2-")[#text(fill:red)[a) Oxygen]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Nitrogen]#only("3-")[#text(fill:red)[b) Nitrogen]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Hydrogen]#only("4-")[#text(fill:green)[c) Hydrogen]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Carbon dioxide]#only("5-")[#text(fill:red)[d) Carbon dioxide]]

#only("1")[#voiceover("Not quite. Let's see the correct solution...")]
#only("2")[#voiceover("Oxygen is not the gas produced when acids react with metals. Oxygen is a component of many acids, but it's not released in this reaction.")]
#only("3")[#voiceover("Nitrogen is also not produced in the reaction between acids and metals. Nitrogen is largely inert and doesn't participate in many chemical reactions.")]
#only("4")[#voiceover("Hydrogen is indeed the gas that's produced when acids react with metals. This is a defining characteristic of acids.")]
#only("5")[#voiceover("Carbon dioxide is not produced in the reaction between acids and metals. Carbon dioxide is the product of combustion reactions and reactions between carbonates and acids.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Acid-Metal Reaction]
#v(40pt)
#only("1-")[Here's what happens when an acid reacts with a metal:]
#v(20pt)
#only("2-")[- Acid donates proton (H⁺) to metal 🔄]
#only("3-")[- Metal loses electrons, becomes positive ion ⚡]
#only("4-")[- Proton (H⁺) gains electron, becomes neutral H atom 🔌]
#only("5-")[- H atoms pair up to form H₂ gas 🎈]
#v(20pt)
#only("6-")[General equation:]
#only("6-")[$"Acid" + "Metal" arrow "Salt" + "H"_2$]

#only("1")[#voiceover("Let's look at the process step by step.")]
#only("2")[#voiceover("First, the acid donates a proton, which is a hydrogen ion, to the metal.")]
#only("3")[#voiceover("The metal, in turn, loses electrons and becomes a positive ion.")]
#only("4")[#voiceover("The proton gains the electron lost by the metal, becoming a neutral hydrogen atom.")]
#only("5")[#voiceover("These hydrogen atoms then pair up to form molecular hydrogen gas, which bubbles out of the solution.")]
#only("6")[#voiceover("The general equation for this reaction is: Acid plus Metal yields Salt plus Hydrogen gas. The salt is formed from the positive metal ions and the negative ions that remain from the acid after it has donated its protons.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the reaction between hydrochloric acid (HCl) and zinc (Zn):]
#v(20pt)
#only("2-")[$2"HCl"(a q) + "Zn"(s) arrow "ZnCl"_2(a q) + "H"_2(g)$]
#v(20pt)
#only("3-")[Here's what happens:]
#v(20pt)
#only("4-")[1. HCl donates protons (H⁺) to Zn]
#only("5-")[2. Zn loses electrons, becomes Zn²⁺]
#only("6-")[3. H⁺ gains electrons, becomes H]
#only("7-")[4. H atoms form H₂ gas]

#only("1")[#voiceover("Let's consider a specific example: the reaction between hydrochloric acid and zinc.")]
#only("2")[#voiceover("The balanced equation for this reaction is: 2 HCl aqueous plus Zn solid yields ZnCl2 aqueous plus H2 gas.")]
#only("3")[#voiceover("Here's the play-by-play:")]
#only("4")[#voiceover("First, HCl donates protons to the zinc.")]
#only("5")[#voiceover("Zinc loses electrons and becomes Zn2+.")]
#only("6")[#voiceover("The protons gain the electrons and become neutral hydrogen atoms.")]
#only("7")[#voiceover("Finally, the hydrogen atoms pair up to form H2 gas, which bubbles out of the solution. And there you have it! The characteristic reaction between an acid and a metal, producing hydrogen gas.")]
]