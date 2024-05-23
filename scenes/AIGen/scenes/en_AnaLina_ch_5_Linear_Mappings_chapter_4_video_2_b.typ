#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension Formula]
#v(40pt)
#only("1-")[For a linear mapping $T: V -> W$, the dimension formula is:]
#v(40pt)
#only("-1")[a) $"dim"(V) = "dim"("ker"(T)) - "dim"("im"(T))$]#only("2-")[#text(fill:red)[a) $"dim"(V) = "dim"("ker"(T)) - "dim"("im"(T))$]]
#v(10pt)
#only("-2")[b) $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]#only("3-")[#text(fill:green)[b) $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]]
#v(10pt)
#only("-3")[c) $"dim"(V) = "dim"("ker"(T)) "dim"("im"(T))$]#only("4-")[#text(fill:red)[c) $"dim"(V) = "dim"("ker"(T)) "dim"("im"(T))$]]
#v(10pt)
#only("-4")[d) $"dim"(V) = "dim"("im"(T)) - "dim"("ker"(T))$]#only("5-")[#text(fill:red)[d) $"dim"(V) = "dim"("im"(T)) - "dim"("ker"(T))$]]
#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option a is incorrect. The dimension formula does not subtract the dimensions of the kernel and image.")]
#only("3")[#voiceover("Option b is indeed the correct dimension formula. It states that the dimension of the domain V equals the sum of the dimensions of the kernel and image of T.")]
#only("4")[#voiceover("Option c is incorrect. The dimension formula does not multiply the dimensions of the kernel and image.")]
#only("5")[#voiceover("And option d is also incorrect. It subtracts the dimensions in the wrong order.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given:]
#v(20pt)
- Linear mapping $T: V \\to W$
#v(40pt)
#only("2-")[Step 1: Recall the dimension formula 📜]
#v(20pt)
- $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$
#only("1")[#voiceover("Let's solve this step by step. We are given a linear mapping T from V to W.")]
#only("2")[#voiceover("The first step is to recall the dimension formula. It states that the dimension of the domain V equals the sum of the dimensions of the kernel and image of T.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Step 2: Identify the components 🔍]
#v(20pt)
- $"dim"(V)$: dimension of domain
- $"dim"("ker"(T))$: dimension of kernel
- $"dim"("im"(T))$: dimension of image
#only("1")[#voiceover("Next, we identify the components of the formula. dim V is the dimension of the domain, dim ker T is the dimension of the kernel, and dim im T is the dimension of the image.")]
#v(40pt)
#only("2-")[Therefore, the correct dimension formula is:]
#v(20pt)
#text(weight: "bold")[b) $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$ ✅]
#only("2")[#voiceover("Therefore, the correct answer is b. The dimension of the domain V equals the sum of the dimensions of the kernel and image of T.")]
]