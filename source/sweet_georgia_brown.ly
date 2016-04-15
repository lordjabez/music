\version "2.18.2"


\header {
  title = "Sweet Georgia Brown"
  composer = "Bernie / Pinkard & Casey"
}


melody = \relative c' {

  \repeat volta 2 {

    d4 e fis  d | a' fis b a | d2 a8 fis4 d8~ | d1 | \break
    d4 e f?   d | a' f   b a | d2 b8 a4   g8~ | g1 \bar "||" \break

    c,4  d e c | g' e a g            | c2 g8 e4 c8~ | c4 c8 d8~ d8 c8 d4 | \break
    a'1~       | a4 c,8 d8~ d8 c8 d4 | a'2~ a8 a4.  | g a8~ a4 r4        \bar "||" \break

    d,4 e fis  d | a' fis b a | d2 a8 fis4 d8~ | d1    | \break
    d4 e f?    d | a' f   b a | d2 b8 a4   g8~ | g2 a2 | \break
    a4. a8~ a2  | g8 e4 a8~ a2 | a4. a8~ a2  | g8 e4 a8~ a2 | \break
    c,8 d4 f8~ f a4 c8~ | c8 a cis d~ d4 a4 | g2 c8 a4 f8~ |

  }

  \alternative {

    { f4 r r2 | \break }
    { f1\fermata \bar "|." }

  }

}


harmony = \chordmode {

  d1:7~ | d:7~ | d:7~ | d:7 |
  g:7~  | g:7~ | g:7~ | g:7 |

  c:7~  | c:7~   | c:7~    | c:7~ |
  f     | c:aug7 | f e2:m7 | a:7  |

  d1:7~  | d:7~      | d:7~    | d:7      |
  g:7~   | g:7~      | g:7~    | g2:7 a:7 |
  d1:m   | a:7       | d:m     | a:7      |
  f2 e:7 | ees:7 d:7 | g:7 c:7 | f:7 e4:7 ees:7 |

  f1

}


bass = \relative c, {

  %b8 b b b b b b fis' cis b b fis' cis b b cis
  %gis fis gis gis gis b gis fis e e e( e') e e e e

}


\score {
  <<
    \new ChordNames {
      \set ChordNames.midiInstrument = "drawbar organ"
      \set chordChanges = ##t
      \harmony
    }
    \new Staff {
      \set Staff.midiInstrument = "alto sax"
      \clef treble
      \key f \major
      \time 4/4

      \melody
    }
  >>
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    \context {
      \Staff
      \override TimeSignature.style = #'numbered
    }
  }
  \midi {
    \tempo 4 = 175
  }
}

\paper {
  indent = 0
  line-width = 150
}
