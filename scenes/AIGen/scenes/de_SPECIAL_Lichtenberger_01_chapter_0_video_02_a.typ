#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Saugnapf]
#v(40pt)
#only("1-")[Warum haftet ein Saugnapf an der Wand, wenn man ihn dagegen drückt?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Das Vakuum im Inneren saugt ihn an die Wand.]#only("2-")[#text(fill:red)[a) Das Vakuum im Inneren saugt ihn an die Wand.]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-2")[b) Der Umgebungsdruck drückt den Saugnapf gegen die Wand.]#only("3-")[#text(fill:green)[b) Der Umgebungsdruck drückt den Saugnapf gegen die Wand.]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Der Kunststoff haftet an der glatten Wandoberfläche.]#only("4-")[#text(fill:red)[c) Der Kunststoff haftet an der glatten Wandoberfläche.]]

#only("1")[#voiceover("Leider nicht ganz richtig. Hier ist die richtige Antwort.")]
#only("2")[#voiceover("Option a) ist falsch. Obwohl es tatsächlich ein Vakuum oder einen niedrigeren Druck im Inneren des Saugnapfs gibt, saugt es den Saugnapf nicht aktiv an die Wand.")]
#only("3")[#voiceover("Option b) ist die richtige Antwort. Der Umgebungsdruck, der höher ist als der Druck im Inneren des Saugnapfs, drückt den Saugnapf gegen die Wand.")]
#only("4")[#voiceover("Option c) ist ebenfalls falsch. Obwohl die Glätte der Oberflächen hilft, eine bessere Abdichtung zu schaffen, ist dies nicht der Hauptgrund, warum der Saugnapf haftet.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Wenn der Saugnapf gegen die Wand gedrückt wird, wird die meiste Luft aus dem Inneren des Saugnapfs herausgedrückt. 🌬]
#v(20pt)
#only("2-")[2. Dies erzeugt ein Teilvakuum (niedrigeren Druck) im Inneren des Saugnapfs im Vergleich zum Umgebungsdruck außen. 📉]
#v(20pt)
#only("3-")[3. Der höhere Umgebungsdruck drückt dann den Saugnapf gegen die Wand und hält ihn an Ort und Stelle. 🌫️ → 🏗️]
#v(20pt)
#only("4-")[4. Die glatten Oberflächen des Saugnapfs und der Wand helfen, den Druckunterschied aufrechtzuerhalten, indem sie verhindern, dass Luft wieder eindringt. 🚫💨]

#only("1")[#voiceover("Hier ist eine Schritt-für-Schritt-Erklärung, wie ein Saugnapf funktioniert:")]
#only("1")[#voiceover("Zuerst, wenn Du den Saugnapf gegen die Wand drückst, wird die meiste Luft aus dem Inneren des Saugnapfs herausgedrückt.")]
#only("2")[#voiceover("Dies erzeugt ein Teilvakuum, was bedeutet, dass der Druck im Inneren des Saugnapfs nun niedriger ist als der Luftdruck außen.")]
#only("3")[#voiceover("Aufgrund dieses Druckunterschieds drückt der höhere Umgebungsdruck den Saugnapf gegen die Wand und hält ihn an Ort und Stelle.")]
#only("4")[#voiceover("Die glatten Oberflächen des Saugnapfs und der Wand helfen, die Abdichtung aufrechtzuerhalten, indem sie verhindern, dass Luft wieder in den Raum im Inneren des Saugnapfs eindringt.")]
#only("4")[#voiceover("Zusammengefasst: Es ist der Unterschied im Luftdruck, wobei der höhere Außendruck gegen den niedrigeren Druck im Inneren des Saugnapfs drückt, der den Saugnapf an der Wand haften lässt.")]
]