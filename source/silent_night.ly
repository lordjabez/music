\version "2.18.2"


\header {
  title = "Silent Night"
  composer = "Franz Gruber, 1818"
  tagline = ""
}


global = {
  \time 6/8
  \key bes \major
}


fluteMelody = \transpose bes bes' {

  \global
  \clef treble

	f'8.( g'16) f'8 d'4.
	f'8.( g'16) f'8 d'4.
	c''4 c''8 a'4. bes'4 bes'8 f'4.
	g'4 g'8 bes'( a') g'f'8. g'16 f'8 d'4.
	g'4 g'8 bes' a' g' f'8. g'16 f'8 d'4.
	c''4 c''8 ees''8.( c''16) a'8 bes'4.( d'')
	bes'8( f') d' f'8.( ees'16) c'8 bes4. ~ bes

}


clarinetHarmony = \transpose bes c' {

  \global
  \clef treble

	d'8. ees'16 d'8 bes4.
	d'8. ees'16 d'8 bes4.
	ees'4 ees'8 ees'4. d'4 d'8 d'4.
	ees'4 ees'8 g'( f') ees' d'8. ees'16 d'8 bes4.
	bes4 ees'8 g' f' ees' d'8. ees'16 d'8 bes4.
	ees'4 ees'8 ees'8.( ees'16) ees'8 d'4.( f')
	d'4 bes8 d'8.( c'16) a8 bes4. ~ bes

}


bass = \transpose bes bes {

  \global
  \clef bass

	bes,4 bes,8 bes,4.
	bes,4 bes,8 bes,4.
	f4 f8 f4. bes,4 bes,8 bes,4.
	ees4 ees8( ees) ees ees bes4 bes8 f4.
	ees4 ees8 ees f g bes4 bes8 bes,4.
	f4 f8 f4 f8 bes,4.( bes,)
	bes,4 bes,8 f,4 f,8 bes,4. ~ bes,

}


harmonies = \chordmode {
  bes2.
  bes2.
  f2.:7
  bes2.
  ees2.
  bes2.
  ees2.
  bes2.
  f2.:7
  bes2.
  bes4.
  f4.:7
  bes2.
  bes2.
}


\score {
    \new Staff {
      \set Staff.midiInstrument = "flute"
      \fluteMelody
    }
  \layout {}
  \midi {}
  \header {
    piece = "Flute"
  }
}


\score {
    \new Staff {
      \set Staff.midiInstrument = "clarinet"
      \clarinetHarmony
    }
  \layout {}
  \midi {}
  \header {
    piece = "Clarinet"
  }
}


\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff {
      \set Staff.midiInstrument = "electric bass (finger)"
      \bass
    }
  >>
  \layout {}
  \midi {}
  \header {
    piece = "Bass"
  }
}
