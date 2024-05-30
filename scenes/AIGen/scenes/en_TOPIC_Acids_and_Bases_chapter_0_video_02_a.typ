#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Acids and Bases]
#v(40pt)
What do acids donate in a chemical reaction? 🧪
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Electrons]#only("2-")[#text(fill:red)[a) Electrons]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Protons]#only("3-")[#text(fill:green)[b) Protons]]
#v(10pt)  
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Neutrons]#only("4-")[#text(fill:red)[c) Neutrons]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Ions]#only("5-")[#text(fill:red)[d) Ions]]

#only("1")[#voiceover("Not quite, but don't worry. Here's the correct solution.")]
#only("2")[#voiceover("a) Electrons is incorrect. Acids do not donate electrons in chemical reactions.")]  
#only("3")[#voiceover("b) Protons is the correct answer. Acids are defined as substances that donate protons, or H+ ions, in chemical reactions.")]
#only("4")[#voiceover("c) Neutrons is incorrect. Acids do not donate neutrons, which are neutral particles found in the nucleus of an atom.")]
#only("5")[#voiceover("d) Ions is also incorrect. While acids do form ions when they dissociate in water, they specifically donate protons, not ions in general.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Acids are defined by their ability to #text(weight: "bold")[donate protons] in chemical reactions.]
#v(20pt)
#only("2-")[When an acid dissociates in water, it releases H+ ions:]
#v(20pt)
#only("3-")[#text(weight: "bold")[HA + H_2O -> A^- + H_3O^+]]
#v(20pt)
#only("4-")[- HA represents a generic acid]
#only("5-")[- H_2O is water]  
#only("6-")[- A^- is the conjugate base of the acid]
#only("7-")[- H_3O^+ is the hydronium ion (protonated water)]

#only("1")[#voiceover("Let's understand why protons is the correct answer.")]
#only("2")[#voiceover("The defining characteristic of an acid is its ability to donate protons when it reacts. This is often demonstrated by the dissociation of an acid in water.")]
#only("3")[#voiceover("In this general equation, HA represents an acid. When it reacts with water, it donates a proton, H+, to the water molecule.")]
#only("4")[#voiceover("HA is a generic representation of an acid.")]  
#only("5")[#voiceover("H2O, of course, is water.")]
#only("6")[#voiceover("After donating a proton, what's left of the acid is called its conjugate base, represented here by A-.")]
#only("7")[#voiceover("The water molecule, after accepting the proton, becomes a hydronium ion, H3O+.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples]
#v(40pt)  
#only("1-")[Here are a couple of specific examples:]
#v(20pt)
#only("2-")[#text(weight: "bold")[HCl + H_2O -> Cl^- + H_3O^+]]
#v(20pt)
#only("3-")[- HCl is hydrochloric acid]
#only("4-")[- Cl^- is the chloride ion (conjugate base)]
#v(20pt)
#only("5-")[#text(weight: "bold")[CH_3COOH + H_2O -> CH_3COO^- + H_3O^+]]  
#only("6-")[- CH_3COOH is acetic acid]
#only("7-")[- CH_3COO^- is the acetate ion (conjugate base)]

#only("1")[#voiceover("Now let's look at a couple of specific examples of acids donating protons.")]
#only("2")[#voiceover("First, we have hydrochloric acid, HCl. When it reacts with water, it donates a proton to form the chloride ion, Cl-, and the hydronium ion.")]
#only("3")[#voiceover("HCl is a strong acid, meaning it dissociates completely in water.")]
#only("4")[#voiceover("The chloride ion, Cl-, is the conjugate base of hydrochloric acid.")]
#only("5")[#voiceover("Another example is acetic acid, CH3COOH. It also donates a proton when it reacts with water.")]
#only("6")[#voiceover("Acetic acid is a weak acid, meaning it only partially dissociates in water.")]  
#only("7")[#voiceover("The acetate ion, CH3COO-, is the conjugate base of acetic acid.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Acids are proton donors 🎁]
#v(20pt)  
#only("2-")[- They release H+ ions in chemical reactions 🔑]
#v(20pt)
#only("3-")[- This is a defining characteristic of acids 📜]
#v(20pt)
#only("4-")[- Examples: HCl, CH\_3COOH 🧪]

#only("1")[#voiceover("To summarize, acids are characterized by their ability to donate protons in chemical reactions.")]
#only("2")[#voiceover("They release hydrogen ions, H+, when they react, especially when they dissociate in water.")]  
#only("3")[#voiceover("This proton donation is a fundamental defining feature of acids.")]
#only("4")[#voiceover("Common examples of acids include hydrochloric acid, HCl, and acetic acid, CH3COOH.")]
]