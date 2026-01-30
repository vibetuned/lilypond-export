\version "2.24.0"
\include "oll-core/package.ily"
\loadPackage lilypond-export
opts.exporter = #exportMusicXML
\header {
  title = "Slurs, Ties, Grace Notes, and Bar Lines Test"
}

\score {
  \new Staff {
    \clef treble
    \time 4/4
    
    % --- Section 1: Slurs and Phrasing Slurs ---
    \mark "Slurs & Phrasing Slurs"
    c'4( d' e' f') | % Simple slur
    g'4\( a' b' c''\) | % Phrasing slur
    c''4\( b' g'( a')\) | % Nested slurs (phrasing > regular)
    
    % --- Section 2: Chords with Slurs ---
    \mark "Chords with Slurs"
    <c' e'>4( <d' f'> <e' g'> <c' e'>) | % Slur on chords
    c'4( <d' e'>) <d' e'>4( c') | % Mixed slurs (Note->Chord, Chord->Note)
    
    % --- Section 3: Ties ---
    \mark "Ties"
    c''4~ c'' d''2 | % Simple tie
    <c' e' g'>1~ | % Chord tie
    <c' e' g'>1 |
    c'4( d'~ d' e') | % Slur containing a tie
    
    % --- Section 4: Grace Notes ---
    \mark "Grace Notes"
    \acciaccatura d'8 c'4 \appoggiatura e'16 d'4 e'2 | % Acciaccatura and Appoggiatura
    c'4 \grace { d'16 e' } f'4 g'2 | % Grace block
    \afterGrace c''2 { b'16 a' } g'2 | % AfterGrace
    
    % Grace notes with slurs
    \acciaccatura { d'16 e' } f'4( g') a'2 |
    
    % --- Section 5: Bar Lines ---
    \mark "Bar Lines"
    c'1 \bar "||" % Double bar
    d'1 \bar ".|" % Start repeat style
    e'1 \bar "|." % End bar
  }
  \layout { 
    \FileExport #opts
  }
  \midi { }
}
