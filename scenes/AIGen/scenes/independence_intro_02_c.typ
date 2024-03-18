#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Stochastische Unabhängigkeit]
#v(40pt)
#only("-1")[- A: Es regnet heute]#only("2-")[#text(fill:red)[- A: Es regnet heute]]
#only("-1")[- B: Heute scheint die Sonne]#only("2-")[#text(fill:red)[- B: Heute scheint die Sonne]]
#v(20pt)
#only("-2")[- A: Es ist Sonntag]#only("3-")[#text(fill:green)[- A: Es ist Sonntag]]
#only("-2")[- B: Heute scheint die Sonne]#only("3-")[#text(fill:green)[- B: Heute scheint die Sonne]]
#v(20pt)
#only("-3")[- A: Es ist Winter]#only("4-")[#text(fill:red)[- A: Es ist Winter]]
#only("-3")[- B: Heute scheint die Sonne]#only("4-")[#text(fill:red)[- B: Heute scheint die Sonne]]
#only("1")[
#voiceover("Schade, das ist leider falsch... Schauen wir uns die Paare nacheinander an und überlegen, welches am ehesten die Kriterien für stochastische Unabhängigkeit erfüllt.")
]
#only("2")[
#voiceover("Regen und Sonnenschein am selben Tag schließen sich gegenseitig weitgehend aus. Wenn es regnet, ist die Wahrscheinlichkeit für Sonnenschein sehr gering, und umgekehrt. Diese beiden Ereignisse sind also definitiv nicht unabhängig.")
]
#only("3")[
#voiceover("Anders sieht es bei Sonntag und Sonnenschein aus. Ob die Sonne scheint oder nicht, hängt nicht davon ab, welcher Wochentag gerade ist. Die Wahrscheinlichkeit für Sonnenschein ist an einem Sonntag genauso hoch wie an jedem anderen Tag. Diese Ereignisse könnten also durchaus unabhängig sein.")
]
#only("4")[
#voiceover("Beim letzten Paar, Winter und Sonnenschein, besteht hingegen wieder eine Abhängigkeit. Im Winter ist die Wahrscheinlichkeit für Sonnenschein generell niedriger als in anderen Jahreszeiten. Die Jahreszeit beeinflusst also die Wahrscheinlichkeit für Sonnenschein, somit sind diese Ereignisse nicht unabhängig.")
]
#only("5")[
#voiceover("Zusammengefasst: Das Paar 'Sonntag und Sonnenschein heute' erfüllt am ehesten die Kriterien für stochastische Unabhängigkeit, da der Wochentag keinen Einfluss darauf hat, ob die Sonne scheint oder nicht.")
]
]