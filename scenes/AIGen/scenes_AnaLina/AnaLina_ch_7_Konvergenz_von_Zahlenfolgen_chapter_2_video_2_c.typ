#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergenz]
#v(40pt)
#only("1-")[Eine Zahlenfolge divergiert bestimmt, wenn sie gegen \_\_\_\_\_ geht.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is correct. 
#only("-1")[a) unendlich]#only("2-")[#text(fill:green)[a) unendlich]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) null]#only("3-")[#text(fill:red)[b) null]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) einen bestimmten Wert]#only("4-")[#text(fill:red)[c) einen bestimmten Wert]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) eine konstante Zahl]#only("5-")[#text(fill:red)[d) eine konstante Zahl]]
#v(40pt)

#only("1")[#voiceover("Das war leider nicht richtig. Hier ist die richtige Lösung.")]
#only("2")[#voiceover("a) unendlich ist die korrekte Antwort. Eine Zahlenfolge divergiert bestimmt, wenn sie gegen unendlich geht.")]
#only("3")[#voiceover("b) null ist falsch. Wenn eine Folge gegen null geht, konvergiert sie, anstatt zu divergieren.")]
#only("4")[#voiceover("c) einen bestimmten Wert ist ebenfalls falsch. Wenn eine Folge gegen einen bestimmten Wert konvergiert, divergiert sie nicht.")]
#only("5")[#voiceover("Und d) eine konstante Zahl ist auch falsch. Eine konstante Folge konvergiert, sie divergiert nicht.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz 🚀]
#v(40pt)
#only("1-")[Eine Folge $a_n$ divergiert, wenn:]
#v(20pt)
#only("2-")[- $lim_(n->oo) a_n = oo$ oder]
#only("3-")[- $lim_(n->oo) a_n = -oo$ oder]
#only("4-")[- $lim_(n->oo) a_n$ existiert nicht]
#v(40pt)
#only("5-")[D.h., die Folge hat keinen endlichen Grenzwert. 📈]

#only("1")[#voiceover("Schauen wir uns die Definition der Divergenz genauer an. Eine Folge a_n divergiert, wenn...")]
#only("2")[#voiceover("der Grenzwert von a_n für n gegen unendlich gleich unendlich ist, oder...")]
#only("3")[#voiceover("der Grenzwert von a_n für n gegen unendlich gleich minus unendlich ist, oder...")]
#only("4")[#voiceover("der Grenzwert von a_n für n gegen unendlich nicht existiert.")]
#only("5")[#voiceover("Das bedeutet, die Folge hat keinen endlichen Grenzwert. Sie geht sozusagen 'aus dem Rahmen'.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiele 📊]
#v(40pt)
#only("1-")[Divergente Folgen:]
#v(20pt)
#only("2-")[- $a_n = n$]
#only("3-")[- $a_n = (-1)^n dot n$]
#only("4-")[- $a_n = (-1)^n$]
#v(40pt)
#only("5-")[Diese Folgen haben keinen endlichen Grenzwert für $n -> oo$. 🎯]

#only("1")[#voiceover("Hier sind einige Beispiele für divergente Folgen:")]
#only("2")[#voiceover("Die Folge a_n gleich n divergiert gegen unendlich.")]
#only("3")[#voiceover("Die Folge a_n gleich minus eins hoch n mal n divergiert, da sie zwischen unendlich und minus unendlich hin und her springt.")]
#only("4")[#voiceover("Und die Folge a_n gleich minus eins hoch n hat keinen Grenzwert, da sie ständig zwischen 1 und -1 wechselt.")]
#only("5")[#voiceover("All diese Folgen haben gemeinsam, dass sie keinen endlichen Grenzwert für n gegen unendlich haben. Das ist das Kennzeichen der Divergenz.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[- Divergenz 🚀: Keine Konvergenz gegen einen endlichen Wert]
#v(20pt)
#only("2-")[- Möglichkeiten: $oo$, $-oo$, oder kein Grenzwert 📈]
#v(20pt)
#only("3-")[- Gegenteil von Konvergenz 🎯]
#v(20pt)
#only("4-")[- Wichtig für das Verhalten von Folgen und Reihen 🔍]

#only("1")[#voiceover("Fassen wir zusammen: Divergenz bedeutet, dass eine Folge nicht gegen einen endlichen Wert konvergiert.")]
#only("2")[#voiceover("Die Folge kann gegen unendlich oder minus unendlich gehen, oder gar keinen Grenzwert haben.")]
#only("3")[#voiceover("Divergenz ist sozusagen das Gegenteil von Konvergenz.")]
#only("4")[#voiceover("Das Konzept der Divergenz ist wichtig, um das Verhalten von Folgen und Reihen zu verstehen und zu analysieren.")]
]