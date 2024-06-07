#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung rationaler Exponenten]
// Der Titel "Vereinfachung rationaler Exponenten" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Um $(a^(m/n))^p$ zu vereinfachen, verwenden wir die Regel \_\_\_\_\_.]
// Die Aussage mit der Lücke wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $(a^(m/n))^p = a^(m n p)$]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $(a^(m/n))^p = a^((m p)/n)$]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $(a^(m/n))^p = a^(m/(n p))$]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $(a^(m/n))^p = a^(n/(m p))$]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Vereinfachung rationaler Exponenten testen. Um $a$ hoch $m$ geteilt durch $n$, alles hoch $p$ zu vereinfachen, welche Regel verwenden wir?")]
#only("2")[#voiceover("Ist es $a$ hoch $m$ geteilt durch $n$, alles hoch $p$ gleich $a$ hoch $m$ mal $n$ mal $p$,")]
#only("3")[#voiceover("oder ist es $a$ hoch $m$ geteilt durch $n$, alles hoch $p$ gleich $a$ hoch $m$ mal $p$ geteilt durch $n$,")]
#only("4")[#voiceover("oder vielleicht $a$ hoch $m$ geteilt durch $n$, alles hoch $p$ gleich $a$ hoch $m$ geteilt durch $n$ mal $p$,")]
#only("5")[#voiceover("oder ist es $a$ hoch $m$ geteilt durch $n$, alles hoch $p$ gleich $a$ hoch $n$ geteilt durch $m$ mal $p$?")]
]
#questionDef(
questionText: "Um $(a^{m/n})^p$ zu vereinfachen, verwenden wir die Regel _ _ _ _ _ .",
answerOptions: ("$(a^{m/n})^p = a^{mnp}$", "$(a^{m/n})^p = a^{(mp)/n}$", "$(a^{m/n})^p = a^{m/(np)}$", "$(a^{m/n})^p = a^{n/(mp)}$"),
correctAnswerIndex: 1)