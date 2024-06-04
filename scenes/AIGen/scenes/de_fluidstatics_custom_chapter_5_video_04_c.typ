#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Material für Tiefseetauchanzüge]
#v(40pt)
#only("1-")[Welches Material ist am besten geeignet, um einem Tiefseetauchanzug hohen Drücken standzuhalten?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Gummi]#only("2-")[#text(fill:red)[a) Gummi]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Aluminium]#only("3-")[#text(fill:red)[b) Aluminium]]
#v(10pt)  
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) Stahl]#only("4-")[#text(fill:green)[c) Stahl]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Plastik]#only("5-")[#text(fill:red)[d) Plastik]]

#only("1")[#voiceover("Großartig! Du hast die richtige Antwort gewählt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Warum Stahl?]
#v(40pt)  
#only("1-")[Stahl ist das am besten geeignete Material, weil:]
#v(20pt)
#only("2-")[- Hohe Festigkeit 💪]
#v(10pt)  
#only("3-")[- Widerstandsfähig gegen hohen Druck 🌊]
#v(10pt)
#only("4-")[- Langlebig und beständig 🕰️]

#only("1")[#voiceover("Lass uns verstehen, warum Stahl die beste Wahl für Tiefseetauchanzüge ist.")]
#only("2")[#voiceover("Erstens hat Stahl eine hohe Festigkeit. Es kann den enormen Kräften in tiefen Meeresschichten standhalten, ohne sich zu verformen oder zu brechen.")]
#only("3")[#voiceover("Zweitens ist Stahl widerstandsfähig gegen hohen Druck. Der Druck unter Wasser steigt um etwa 1 Atmosphäre für alle 10 Meter Tiefe. Stahl kann diesen extremen Drücken standhalten.")]
#only("4")[#voiceover("Zuletzt ist Stahl langlebig und beständig. Tiefseetauchanzüge müssen zuverlässig sein und wiederholtem Einsatz unter rauen Bedingungen standhalten.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Warum nicht die anderen?]
#v(40pt)
#only("1-")[Gummi, Aluminium und Plastik sind nicht so geeignet, weil:]
#v(20pt)  
#only("2-")[- Geringere Festigkeit im Vergleich zu Stahl 🫘]
#v(10pt)
#only("3-")[- Können sich unter hohem Druck verformen oder brechen 💥]
#v(10pt)  
#only("4-")[- Weniger langlebig und können im Laufe der Zeit abgebaut werden 📉]

#only("1")[#voiceover("Nun, lass uns sehen, warum die anderen Materialien nicht so geeignet sind.")]
#only("2")[#voiceover("Gummi, Aluminium und Plastik haben alle eine geringere Festigkeit im Vergleich zu Stahl. Sie können den Kräften in tiefen Meeresschichten möglicherweise nicht standhalten.")]
#only("3")[#voiceover("Unter hohem Druck können sich diese Materialien verformen oder sogar brechen. Dies könnte für einen Tiefseetaucher katastrophal sein.")]
#only("4")[#voiceover("Zuletzt sind diese Materialien im Allgemeinen weniger langlebig als Stahl und können im Laufe der Zeit, besonders bei wiederholtem Kontakt mit Salzwasser und hohem Druck, abgebaut werden.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Zusammenfassend:]
#v(20pt)
#only("2-")[- Stahl ist das am besten geeignete Material für Tiefseetauchanzüge 🤿]
#v(10pt)  
#only("3-")[- Es hat eine hohe Festigkeit, widersteht hohem Druck und ist langlebig 🦾]
#v(10pt)
#only("4-")[- Andere Materialien wie Gummi, Aluminium und Plastik sind weniger geeignet 🚫]

#only("1")[#voiceover("Abschließend...")]
#only("2")[#voiceover("Stahl ist das am besten geeignete Material für Tiefseetauchanzüge aufgrund seiner einzigartigen Eigenschaften.")]
#only("3")[#voiceover("Seine hohe Festigkeit, Widerstandsfähigkeit gegen hohen Druck und Langlebigkeit machen es ideal für die extremen Bedingungen des Tiefseetauchens.")]
#only("4")[#voiceover("Während Gummi, Aluminium und Plastik ihre Anwendungen haben, sind sie für diesen speziellen Zweck weniger geeignet.")]
]