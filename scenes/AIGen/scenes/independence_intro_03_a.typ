#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Stochastische Unabhängigkeit]
#v(40pt)
#only("1-")[- A: Eine Fußballmannschaft gewinnt ein Spiel]
#v(40pt)
#only("-1")[#text()[- B:  Gewinnt auch nächstes Spiel]]#only("2-")[#text(fill:red)[- B:  Gewinnt auch nächstes Spiel]]
#v(10pt)
#only("-2")[#text()[- C: Top-Stürmer trifft]]#only("3-")[#text(fill:red)[- C: Top-Stürmer trifft]]
#v(10pt)
#only("-3")[#text()[- D: Fehlentscheidung]]#only("4-")[#text(fill:green)[- D: Fehlentscheidung]]
#only("1")[
#voiceover("Betrachten wir die Ereignisse B, C und D und überlegen uns, ob sie stochastisch unabhängig von Ereignis A, Eine Fußballmannschaft gewinnt ein Spiel, sind..")
]
#only("2")[
#voiceover("Ereignis B: Die Mannschaft gewinnt auch ihr nächstes Spiel. Der Ausgang eines Spiels kann durchaus die Wahrscheinlichkeit beeinflussen, dass die Mannschaft auch das nächste Spiel gewinnt. Ein Sieg kann der Mannschaft Selbstvertrauen geben und ihre Siegeschancen im nächsten Spiel erhöhen. Daher sind diese Ereignisse wahrscheinlich nicht unabhängig.")
]
#only("3")[
#voiceover("Ereignis C: Der Top-Stürmer der Mannschaft erzielt ein Tor. Auch hier gibt es eine Abhängigkeit. Wenn die Mannschaft gewinnt, ist die Wahrscheinlichkeit oft höher, dass ihr bester Stürmer getroffen hat, als wenn sie verliert. Der Sieg der Mannschaft und die Torchancen ihres Top-Stürmers sind also nicht unabhängig.")
]
#only("4")[
#voiceover("Ereignis D: Der Schiedsrichter trifft eine Fehlentscheidung. Dies ist das einzige Ereignis, das wahrscheinlich unabhängig vom Sieg der Mannschaft ist. Ob der Schiedsrichter Fehler macht, hängt von vielen Faktoren ab, wie seiner Erfahrung, seiner Sicht auf das Geschehen und der Schwierigkeit der Entscheidungen. Aber der Ausgang des Spiels sollte keinen Einfluss darauf haben. Schiedsrichter machen manchmal Fehler, egal wer gewinnt.")
]
]  