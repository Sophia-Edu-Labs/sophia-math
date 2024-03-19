#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Zufallsexperiment]
#v(20pt)
#align(center)[ #text(weight: "bold")[⚅ Einmaliger Würfelwurf ⚀]]
#v(30pt)
#only("1-")[- $E$: Augenzahl ist gerade]
#only("2-")[- $E = {2,4,6}$]
#only("1")[
#voiceover("Das stimmt nicht, schade! Das Ereignis 'Die gewürfelte Augenzahl ist gerade' umfasst alle Ergebnisse, bei denen eine gerade Zahl gewürfelt wird.")
]
#only("2")[
#voiceover("Diese Ergebnisse sind 2, 4 und 6. In Mengenschreibweise notieren wir das Ereignis E also als E istgleich geschweifte Klammer auf 2, 4, 6 geschweifte Klammer zu.")
]
#v(20pt)
#only("3")[
#voiceover("Beachte, dass ein Ereignis immer eine Menge von Ergebnissen ist und daher in geschweiften Klammern notiert wird.")
]
]