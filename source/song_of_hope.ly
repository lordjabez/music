\version "2.18.2"


\header {
  title = "Song Of Hope"
  composer = "Robbie Seay Band"
  instrument = "Bass Guitar"
}



harmoniesChorus = \chordmode {

  b1 b1 gis1:m e1

}


bassChorus = \relative b, {

  \clef bass
  \key b \major
  \time 4/4
  \tempo 4 = 110

  b8 b b b b b b fis' cis b b fis' cis b b cis
  gis fis gis gis gis b gis fis e e e( e') e e e e

}


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmoniesChorus
    }
    \new Staff {
      \set Staff.midiInstrument = "electric bass (finger)"
      \bassChorus
    }
  >>
  \layout {}
  \midi {}
  \header {
    piece = "Turn / Chorus"
  }
}
