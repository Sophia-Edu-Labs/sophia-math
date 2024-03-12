#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Teilmengen]
#v(40pt)
- $A = {1, 2, 3}$
- $B = {1, 2, 3, 4}$
- $C = {3, 4, 5}$
#v(40pt)
Welche Aussage ist #text(weight: "bold")[falsch]?
#v(40pt)
#only("-1")[- $A subset.eq B$]#only("2-")[#text(fill:green)[- $A subset.eq B$]]
#v(10pt)
#only("-2")[- $B subset.not A$]#only("3-")[#text(fill:green)[- $B subset.not A$]]
#v(10pt)
#only("-3")[- $A subset B$]#only("4-")[#text(fill:green)[- $A subset B$]]
#v(10pt)
#only("-4")[- $C subset B$]#only("5-")[#text(fill:red)[- $C subset B$]]

#only("1")[#voiceover("Super, das ist richtig.")]
#only("2")[#voiceover("A ist Teilmenge von B, da alle Elemente von A, also 1, 2 und 3, auch in B enthalten sind.")]
#only("3")[#voiceover("B ist tatsächlich keine Teilmenge von A, denn vier ist in B enthalten, aber nicht in A.")]
#only("4")[#voiceover("A ist echte Teilmenge von B, da alle Elemente von A, also 1, 2 und 3, auch in B enthalten sind, B aber zusätzlich noch das Element 4 enthält.")]
#only("5")[#voiceover("Nur die Aussage, dass C Teilmenge von B ist, ist falsch, da 5 in C enthalten ist, aber nicht in B.")]
]
