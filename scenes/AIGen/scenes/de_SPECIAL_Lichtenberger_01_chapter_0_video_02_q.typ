#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Saugnapf 🪠]
#v(40pt)
#only("1-")[Ein Saugnapf wird gegen die Wand gedrückt, um ein Tuch daran aufzuhängen. Warum haftet der Saugnapf an der Wand?]
#v(40pt)
#only("2-")[a) Das Vakuum im Inneren saugt ihn an die Wand.]
#v(10pt)
#only("3-")[b) Der Umgebungsdruck drückt den Saugnapf gegen die Wand.]
#v(10pt) 
#only("4-")[c) Der Kunststoff haftet an der glatten Wandoberfläche.]
#only("1")[#voiceover("Lass uns dein Verständnis von Saugnäpfen testen. Ein Saugnapf wird gegen die Wand gedrückt, um ein Tuch daran aufzuhängen. Warum haftet der Saugnapf an der Wand?")]
#only("2")[#voiceover("Liegt es daran, dass das Vakuum im Inneren ihn an die Wand saugt,")]  
#only("3")[#voiceover("oder liegt es daran, dass der Umgebungsdruck den Saugnapf gegen die Wand drückt,")]
#only("4")[#voiceover("oder vielleicht, weil der Kunststoff an der glatten Wandoberfläche haftet?")]
]#questionDef(
questionText: "Ein Saugnapf wird gegen die Wand gedrückt, um ein Tuch daran aufzuhängen. Warum haftet der Saugnapf an der Wand?",
answerOptions: ("Das Vakuum im Inneren saugt ihn an die Wand.", "Der Umgebungsdruck drückt den Saugnapf gegen die Wand.", "Der Kunststoff haftet an der glatten Wandoberfläche."),
correctAnswerIndex: 1,
)