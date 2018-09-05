
%%%%%%%%%%%%%%%%%%
% Some useful definitions for early music
%%%%%%%%%%%%%%%%%%

italicas=\override LyricText #'font-shape = #'italic
rectas=\override LyricText #'font-shape = #'upright
ss=\once \set suggestAccidentals = ##t
ficta = \once \set suggestAccidentals = ##t
date = #(strftime "%Y-%m-%d" (localtime (current-time)))
%m0 = \melismaEnd
%m1 = \melisma

%% Defining graphics for unusual mensural time signatures!
#(
  define ((double-time-signature2 glyph a) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph #:number #:vcenter a )
          )
       )
  )
)
#(
  define ((double-time-signature3 glyph a b) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph #:vcenter #:column (a b) )
          )
       )
  )
)
#(
  define ((custom-time-signature glyph) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph)
          )
       )
  )
)


%%%%%%%%%%%%%%%%%%
% 3 - Score content: notes
%%%%%%%%%%%%%%%%%%

%\language "english"

StaveANotes = {

  % clef c1  % tweak / uncomment for debugging - this should override the clef in the score block

  \override Score.TimeSignature.stencil =
    #(custom-time-signature "timesig.mensural22")
  \time 2/1

  %\mark \markup \italic {"Prima Pars"}

  		d''\breve b'1 b'2 c''1 c''2 a'2 a'2 b'2. \melisma c''4 d''2 \melismaEnd g'1
		g''1 f''2   c''1  f''2. \melisma e''4  d''1. \melismaEnd d''2 d''2 e''2 g''4 \melisma f''4 e''4 d''4 c''1 \melismaEnd b'1
	r1.	d''1 c''2 f''1 e''1
	r1.	a'2 b'2 b'2 c''1 c''1

	r2	d''1 e''2 f''2 d''2 d''2 \melisma c''2 \melismaEnd d''1
	r1 R\breve r2
		d''2 g''2 g''2 f''1 e''\breve a'2. \melisma b'4 c''4 d''4 e''2 \melismaEnd d''2 d''2 f''2 d''1 \melisma \ficta cis''2 \melismaEnd d''1
	r\breve r\longa
		c''1. b'2 b'2 b'2. \melisma a'8 g'8 a'2 \melismaEnd b'1
	r2	d''2 a'2 c''1 c''2 b'1 a'1
	r1 	g''1 d''1 f''2 f''2 e''1 d''2 d''1 d''2 b'1 a'2
		e''2 f''2 f''2 e''2. \melisma d''4 c''4 b'4 c''1 b'2 \melismaEnd c''\breve
	r\breve
		d''\breve c''2 c''2 c''2 e''2 d''\breve b'\breve.
	r1 R\breve r2
		c''2 c''2 d''2 e''1 e''2 g''1 f''2 d''1 g''2 g''2 f''2 d''2 f''2 e''2 c''1 d''2 b'2 b'2 c''2 d''1 b'1
	R\breve
		e''2 e''2 fis''2 g''1 \ficta fis''2 g''2. \melisma \ficta f''4 e''4 d''4 c''2 \melismaEnd b'2 e''2. \melisma d''4 c''2 \melismaEnd a'2
		d''2 c''2 c''1 f''1 e''2 d''4 \melisma e''4 f''2. e''4 d''1 \ficta cis''2 \melismaEnd d''1
	r\breve
		e''1 f''1. e''2 e''2 d''2 e''1 c''2. b'4 b'2 c''1 e''2 g''2 g''2 f''1 e''1
	r1	e''2. d''4 d''1 c''2 c''2 b'2 b'2 d''1 d''2
		d''2 g''1 g''2 e''1 c''2 a'4 \melisma b'4 c''4 d''4 e''2 \melismaEnd e''2 c''2. \melisma b'4 a'1 \melismaEnd b'1
	r\longa r2
		g'2 d''1 d''2 b'1 g'2 b'2 b'2 c''1 c''1
	r2	c''2 g''1 g''2 f''1 f''2 d''2 g''2 g''2 \melisma \ficta fis''2 \melismaEnd g''\breve
	R\breve r2
		a'1 d''1 d''2 b'1 b'2 e''1 d''2 c''2. \melisma d''4 e''1 \melismaEnd d''\maxima*1/4

  %\override Score.TimeSignature.stencil =
  %   #(double-time-signature2 "timesig.mensural98" "3")
  % \time 3/2

  % \cadenzaOn

  %  b'\maxima*1/4
    \bar "|."
  %\cadenzaOff


}
StaveBNotes = {

  % clef c3  % tweak / uncomment for debugging - this should override the clef in the score block

   	r1	g'\breve e'1 e'2 f'1 f'2 d'2 g'2 \[ d'1 \melisma e'2. \] f'4 g'2 \melismaEnd a'2
		a'\breve fis'2 fis'2 g'2. \melisma \ficta f'4 d'2 \melismaEnd g'2 g'2 g'2 a'1 d'1
	r2	a'1 g'2 a'\breve a'1
	r1 r1 r2
		d'2 a'2 a'2 g'1 f'1
		\ficta bes'1 a'2 a'1 a'2 d'2. \melisma e'4 f'1 \melismaEnd g'\breve
	r1.	e'2 a'2 a'2 c''1 b'1
	r1	g'1 bes'1 a'2 a'2 a'1 f'1
	r1 R\breve
		a'1. g'2 g'2 g'2. \melisma \ficta fis'8 e'8 \ficta fis'2 \melismaEnd g'2
		g'1 g'2 e'2 e'1 d'2
	r1.	a'2 e'2 a'1 g'2 f'1 e'1
	r1	g'1 c'2 c''1 c''2 b'1 a'1
	r1.	a'1 a'2 gis'1 a'1
	r2	d'2 g'2 g'2 f'2. \melisma e'4 d'4 c'4 d'1 \ficta cis'2 \melismaEnd d'1 f'1. e'2
		e'1 a'2 \ficta bes'2 a'1 g'2 g'1 g'2
		\[ g'1 \melisma a'1 \melismaEnd \] a'2 a'2 d'1 g'1
		a'2 a'2 b'2 c''1 b'2 g'2 a'2 g'1 g'1
		a'2 a'2 a'2 c''1 a'1 g'1 a'2 a'1 d'2
		g'2 c'2. \melisma b4 a2 \melismaEnd e'2 e'4 \melisma d'4 c'4 b4 a2 \melismaEnd b2 d'1 e'1
	R\breve
		e'2 e'2 fis'2 g'1 g'2 c''2 c''2 c''1 bes'2
		a'2 f'2 g'2 a'2 a'2 a'1 a'1
	r1	g'1 a'1. c''2 b'2 a'2 b'1
	R\breve
		a'2. g'4 g'2 b'2 a'2 a'2 a'2 c''2. \melisma b'8 a'8 b'2 \melismaEnd c''4
		c''2 b'4 b'2 a'2 a'2 g'1 e'2 a'1 b'1
	r1	e'1 c''1 c''2 a'1 g'2 e'2 e'2 f'2. \melisma e'4 d'1 \melismaEnd e'2. \melisma f'4 g'2 \melismaEnd
		f'2 e'2 a2 c'2. \melisma d'4 e'1 \melismaEnd d'1
	r2	d'2 g'1. g'2 e'2. \melisma f'4 g'2 \melismaEnd a'2 c''2 a'2 g'1 e'2
		a'1 a'2 g'2 g'2 a'1 g'2
		d'2 g'1 g'2 g'2 a'2 g'1 fis'2 fis'1 g'\maxima
}
StaveCNotes = {

  % clef c4  % tweak / uncomment for debugging - this should override the clef in the score block

 	R\longa r1
		d'\breve b1 b2 c'1 c'2 a2 a2 a\breve g2
		g'1 e'1 e'2 f'2 e'2  g'2 g'2 a'2. \melisma g'4 f'4 e'4 d'2 e'1 \melismaEnd d'1
	r2	a1 b2 c'1 d'1
	r2	a2 c'2 c'2 d'1 g'1
	r1. 	a2 b2 b2 a1 g2
		d'1 e'2 f'2 d'2 d'2 \melisma c'2 \melismaEnd d'2
		d'2 a'2 a'2 g'1 f'2 d'2 e'2 g'1 g'2 \[ f'1 \melisma e'1 \melismaEnd \] d'1
		f'1. e'2 e'2 e'2. \melisma d'8 c'8 d'2 \melismaEnd e'2
		e'1 e'2 \[ c'1 \melisma d'1 \melismaEnd \] e'2. \melisma d'4 c'1 b\breve \melismaEnd c'1
	R\breve
		d'1 a2 c'1 b2 b1 a1
		r\breve
		d'1. d'2 cis'1 d'1 b1 c'2 a2 d'1 c'1
		a1 b2 b2 g1 a1
		a'\breve g'2 g'2 f'2 g'2 f'1 d'\breve
	r2	g2 c'2 c'1 c'1 \melisma b2 \melismaEnd c'1
	r1.	a2 a2 b2 c'1 b2
		b2 b2 b2 d'1 d'2 c'2 a2 a1 b2
	r1.	d'2 d'2 e'2 f'1 c'2 g'1 e'2 d'1 a2
		a2 c'1. c'2 d'2 e'2 a'1 a'2
		d'2 g'2 e'2 f'2 c'2 c'4 \melisma d'4 e'4 f'4 g'2 \melismaEnd c'2
	r1.	e'2 f'1. e'2 e'2 d'2 e'2
		e'2 d'2. \melisma e'4 f'2 \melismaEnd a'2 g'2 f'2 e'1
	R\breve r1
	e'2. d'4 d'2 c'1 c'2 g'\breve d'2 \melisma f'2 \melismaEnd e'2. \melisma f'4 g'4 e'4 g'1 \ficta fis'2 \melismaEnd g'2
		g2 b1 b2 c'1 a2 c'2 c'2 b1 a1
	r2	d'1 g'1 g'2 e'2 c'2 a4 \melisma b4 c'4 d'4 e'2 \melismaEnd e'2 c'2. \melisma b4 a1 \melismaEnd b1
	r2	d'1 g'1 g'2 e'2 c'2 a4 \melisma b4 c'4 d'4 e'2 \melismaEnd e'2 c'2. \melisma b4 a1 \melismaEnd b2
		d'2 d'1 d'2 b1 c'2 b2 c'2. \melisma d'4 e'2 \melismaEnd d'2. \melisma c'8 b8 a1 \melismaEnd g\maxima
}
StaveDNotes = {
  	R\longa R\longa R\breve r1
  	d'\breve b1 b2 c'1 c'2 a2 a2 b1 d'\breve
	r1 r2	d'1 c'2 f'1 e'1
	r\breve e'1 a'2 a'2 g'1 f'1 e'1 g'1 c'2 d'2 b2. \melisma a4 \[ b1 a1 \] g1 \melismaEnd a1
	r2	a2 e'2 e'2 d'1 c'1 g2 g2 d'2 d'2 a1 d'2
	d'1 c'2 c'\breve a2. \melisma b4 c'4 b8 a8 b2 c'2. b4 a1 \melismaEnd g1
	r\breve
		g'1 d'1 f'1 g'2 e'1 e'2
	r2	a'1 e'1 d'1 d'2 a'1 g'2
		g'1 g'2 fis'1 g'2. \melisma f'4 e'2 \melismaEnd
		a2 a2 a2 e'\breve g'2. \melisma f'4 e'1 \melismaEnd
	r1	g'\breve f'2 f'2 d'2 d'2 a1 c'2
		c'2 d'2 g2 d'1 g1
	r1	d'2. \melisma e'4 f'2 \melismaEnd f'1 e'2 g'1 e'1
		f'2 f'2 g'2 a'1 g'2
	r1 r2 	d'2 d'2 e'2 f'1 f'2 g'2 a'2 f'1 d'1
		f'2 f'2 f'2 g'1 a'2
		a2 a2 b2 c'2 g2
	r1 r1 r2
		e'2 e'2 f'2 g'1 e'2 a'1 g'2 e'1 a'2
		a'2 g'2 g'2 g'2 f'2 d'1 e'1
		d'1 d'2 c'2 b2 a2 b1
	R\breve r2
		a'2. g'4 g'2 f'2 e'2 e'2 a2 c'1 g1
	r1 r2	e'2. d'4 d'2 c'2 g2 g2 d'2 a4 \melisma b4 c'4 d'4 e'1 \melismaEnd d'1
	r2	d'1 g'1 g'2 e'2 f'2 e'2 e'2 e'1 e'2
		a2 d'1 g1
		r1 r1	c'1 g'1 g'2 g'1 f'2 d'2 g2 d'2 b2
	r2	g2 c'1 c'2 a1 a2 c'4 \melisma b8 a8 b2 \melismaEnd g2 \[ c'1 \melisma d'2. \] c'4 b2 \melismaEnd a1
		b1 d'2 e'1 e'2 c'1 a2
		a2 d'1 b2. \melisma c'4 d'2 \melismaEnd e'1 e'2 c'2 b2 e'2. \melisma d'4 c'4 b4 c'2 \melismaEnd b\maxima*1/4

}
StaveENotes = {  

  % clef c4  % tweak / uncomment for debugging - this should override the clef in the score block

   	R\longa R\breve
		g\breve e1 e2 f1 f2 d2 d2 d1 g1
	R\breve r1
	g1. f2 \ficta bes1 a1
	r1 r1	d1 a2 a2 g1 f1
	r1 R\breve
		d1 a2 a2 g1 f2 d2 e2 g1 g2 \[ f1 \melisma e1 \melismaEnd \] d1
	r1 R\longa R\breve
		bes1. a2 a1 a2. \melisma g4 f1 \melismaEnd e1
	R\longa
		a1 e2 g1 g2 f1 c1
	r1 r1 r2
		a2 e2 g1 g2 f1 c1
	R\breve
		g1 a1 d1 e2 e2 a2 a2 g1 c2
		c2 f2 f2 g2. \melisma f4 e1 \melismaEnd d\breve
	R\longa r1
		g\breve f2 f2 f2 a2 g1 c1
	r1 r1 r2
		e2 e2 f2 g1. e2
		d1 d2 e2 f1 d2 g1 f2 d1 g2
		g2 f2 f2 f2 e2 c1 d\breve
	r1	a2 a2 b2 c'1 a2 d'2 b2 c'1 f2
		f2 c'2 c'2 g2 a2 bes1 a1
	r2	d2 d2 a2 g2 f2 e1
	R\longa
		a2. g4 g2 f1 c2 c2 g2 d4 \melisma e4 f4 g4 a1 \melismaEnd g1
	r1 R\breve r1
		d1 g1 g2 e1 c2 c2 f2 a1 e1
	R\breve r2
		g2 c'1 c'2 a1 f2 c2 c2 c1 d2 d2 g1 g\breve
	r2	c1 f1 f2 e2 e1 f1 d2 g1 d2
		d2 g1 g2 e1 c2 f2 c2 d1 d2
		d2 g1 g2 e1 c2 c2 g2 c\breve g\maxima*1/4

}
StaveFNotes = {  }
StaveGNotes = {  }
StaveHNotes = {  }

% Convenient overrides - comment and uncomment to add and remove staves for quick debugging / rendering purposes:
% StaveANotes = {  }
% StaveBNotes = {  }
% StaveCNotes = {  }
% StaveDNotes = {  }
% StaveENotes = {  }
% StaveFNotes = {  }
% StaveGNotes = {  }
% StaveHNotes = {  }

%%%%%%%%%%%%%%%%%%
% 4 - Score content: text / lyrics
%%%%%%%%%%%%%%%%%%

StaveALyrics = \lyricmode {
      A -- ve sanc -- tis -- si -- ma Ma -- ri -- a,
      A -- ve sanc -- tis -- si -- ma Ma -- ri -- a,
      Ma -- ter De -- i,
      Re -- gi -- na Cae -- li,
      Por -- ta Pa -- ra -- di -- si,
      Re -- gi -- na Cae -- li,
      Por -- ta Pa -- ra -- di -- si,
      Do -- mi -- na mun -- di.
      Pu -- ra sin -- gu -- la -- ris,
      Pu -- ra sin -- gu -- la -- ris tu es vir -- go.
      Tu con -- cep -- ti -- sti Ie -- sum si -- ne pec -- ca -- to.
      Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem et Sal -- va -- to -- rem mun -- di,
      Tu pe -- pe -- ris -- ti,
      Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem et Sal -- va -- to -- rem mun -- di,
      in quo non du -- bi -- to.
      Li -- be -- ra me ab om -- ni ma -- lo,
      Li -- be -- ra me ab om -- ni ma -- lo,
      et o -- ra pro pec -- ca -- tis me -- is,
      et o -- ra pro pec -- ca -- tis me -- is,
      et o -- ra pro pec -- ca -- tis me -- is,
      et o -- ra pro pec -- ca -- tis me -- is.
}
StaveBLyrics = \lyricmode {
      A -- ve sanc -- tis -- si -- ma Ma -- ri -- a,
      A -- ve sanc -- tis -- si -- ma Ma -- ri -- a,
      Ma -- ter De -- i,
      Re -- gi -- na Cae -- li,
      Por -- ta Pa -- ra -- di -- si,
      Re -- gi -- na Cae -- li,
      Por -- ta Pa -- ra -- di -- si,
      Do -- mi -- na mun -- di,
      Do -- mi -- na mun -- di.
      Pu -- ra sin -- gu -- la -- ris,
      Pu -- ra sin -- gu -- la -- ris tu es vir -- go.
      Tu con -- cep -- ti -- sti Ie -- sum si -- ne pec -- ca -- to,
      Ie -- sum si -- ne pec -- ca -- to.
      Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem,
      Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem et Sal -- va -- to -- rem mun -- di,
      Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem et Sal -- va -- to -- rem mun -- di,
      in quo non du -- bi -- to.
      Li -- be -- ra me ab om -- ni ma -- lo,
      Li -- be -- ra me ab om -- ni ma -- lo,
      et o -- ra pro pec -- ca -- tis me -- is, __
      pec -- ca -- tis me -- is,
      et o -- ra pro __ pec -- ca -- tis me -- is,
      pro pec -- ca -- tis me -- is,
      et o -- ra pro pec -- ca -- tis me -- is. __
}
StaveCLyrics = \lyricmode {
    A -- ve sanc -- tis -- si -- ma Ma -- ri -- a,
    A -- ve sanc -- tis -- si -- ma Ma -- ri -- a,
    Ma -- ter De -- i,
    Re -- gi -- na Cae -- li,
    Re -- gi -- na Cae -- li,
    Por -- ta Pa -- ra -- di -- si,
    Re -- gi -- na Cae -- li,
    Por -- ta Pa -- ra -- di -- si,
    Do -- mi -- na mun -- di,
    Do -- mi -- na mun -- di,
    Pu -- ra sin -- gu -- la -- ris tu es vir -- go.
    Tu con -- cep -- ti -- sti,
    Tu con -- cep -- ti -- sti Ie -- sum si -- ne pec -- ca -- to,
    si -- ne pec -- ca -- to.
    Tu pe -- pe -- ris -- ti,
    Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem,
    Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem et Sal -- va -- to -- rem mun -- di,
    et Sal -- va -- to -- rem mun -- di,
    in quo non du -- bi -- to,
    in quo __ non du -- bi -- to.
    Li -- be -- ra me ab om -- ni __ ma -- lo,
    et o -- ra pro pec -- ca -- tis me -- is,
    et o -- ra pro pec -- ca -- tis me -- is,
    et o -- ra pro pec -- ca -- tis me -- is,
    et o -- ra pro pec -- ca -- tis __ me -- is. __
}
StaveDLyrics = \lyricmode {
    A -- ve sanc -- tis -- si -- ma Ma -- ri -- a,
    Ma -- ter De -- i,
    Re -- gi -- na Cae -- li,
    Por -- ta Pa -- ra -- di -- si,
    Re -- gi -- na Cae -- li,
    Por -- ta Pa -- ra -- di -- si,
    Do -- mi -- na mun -- di.
    Pu -- ra sin -- gu -- la -- ris,
    Pu -- ra sin -- gu -- la -- ris tu es vir -- go. __
    Tu con -- cep -- ti -- sti __ Ie -- sum si -- ne pec -- ca -- to,
    si -- ne pec -- ca -- to.
    Tu __ pe -- pe -- ris -- ti,
    Tu pe -- pe -- ris -- ti,
    Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem et Sal -- va -- to -- rem
    Tu pe -- pe -- ris -- ti,
    Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem et Sal -- va -- to -- rem mun -- di,
    in quo non du -- bi -- to.
    Li -- be -- ra me ab om -- ni ma -- lo,
    Li -- be -- ra me ab om -- ni ma -- lo,
    et o -- ra pro pec -- ca -- tis me -- is,
    et o -- ra,
    et o -- ra pro pec -- ca -- tis me -- is,
    et o -- ra pro pec -- ca -- tis me -- is,
    pro pec -- ca -- tis me -- is,
    et o -- ra __ pro pec -- ca -- tis me -- is.
}
StaveELyrics = \lyricmode {
      A -- ve sanc -- tis -- si -- ma Ma -- ri -- a,
      Ma -- ter De -- i,
      Re -- gi -- na Cae -- li,
      Re -- gi -- na Cae -- li,
      Por -- ta Pa -- ra -- di -- si,
      Do -- mi -- na mun -- di.
      Pu -- ra sin -- gu -- la -- ris,
      Pu -- ra sin -- gu -- la -- ris tu es vir -- go.
      Tu con -- cep -- ti -- sti,
      Tu con -- cep -- ti -- sti Ie -- sum si -- ne pec -- ca -- to.
      Tu pe -- pe -- ris -- ti,
      Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem et Sal -- va -- to -- rem mun -- di,
      Tu pe -- pe -- ris -- ti Cre -- a -- to -- rem et Sal -- va -- to -- rem mun -- di,
      in quo non du -- bi -- to.
      Li -- be -- ra me ab om -- ni ma -- lo,
      et o -- ra pro pec -- ca -- tis me -- is,
      et o -- ra pro pec -- ca -- tis me -- is,
      et o -- ra,
      et o -- ra pro pec -- ca -- tis me -- is,
      et o -- ra pro pec -- ca -- tis me -- is,
      et o -- ra pro pec -- ca -- tis me -- is.
}
StaveFLyrics = \lyricmode {  
      
      }
StaveGLyrics = \lyricmode { A }
StaveHLyrics = \lyricmode { A }

 % Tanslation and attribution of text
 \markup {
        \vspace #1
	\fill-line {
		\column {
                        \vspace #1
			%\line { Prima Pars }
			\line { \italic { Hail most holy Mary, mother of God, queen of heaven, gate of paradise, ruler of the world. }}
			\line { \italic { You are a uniquely pure virgin. }}
			\line { \italic { You conceived Jesus without sin. }}
			\line { \italic { You bore the creator and saviour of the world in whom I do not doubt. }}
			\line { \italic { Free me from every evil and pray for me a sinner. }}

			\vspace #1
			\line { Text source goes here }


		}
	}
}


%%%%%%%%%%%%%%%%%%
% 5 - Editorial content, including prefatory stave / incipit settings and notes
%%%%%%%%%%%%%%%%%%

 %  Should very rarely need to be touched once a given piece has been typeset

% 5a Editorial method and comments
\markup {
    \vspace #3
    \column {
          %\wordwrap  { \italic { Music source and editorial comments go here.} }

          \wordwrap  {
              \italic {Andreae Gabrielis Sacrae Cantiones [...], Liber Primus}
              , published Antonio Gardano, Venice 1565;
              acknowledgements to the Bavarian State Library,
              whose website \italic{(http://bildsuche.digitale-sammlungen.de)} contains a scan of the whole publication.
          }
          \vspace #1
          \wordwrap  {
              Barlines are editorial (one bar per \italic {tempus}, ie. breve); 
              ficta, ligature brackets, cautionary and courtesy accidentals are above the stave where applicable. 
              Original note-values have been preserved as far as possible.
              Original mensuration marks are presented rather than imposing modern time signatures.
              Editorial underlay is in italics where applicable;
              Latin spelling has been modernised in places to aid legibility, and punctuation has been
              added.
          }
          \vspace #1
          \wordwrap {
              This is Gabrieli's first published collection of his compositions
              and shows his early style.  1565 is an interesting date as Gabrieli's
              star was just rising in Venice - he had travelled to Munich in 1562,
              befriending Lassus, and then he became organist at S Marco in 1566.
              Quite possibly this collection,  deidcated to Prince Albert, Duke of Bavaria
              and probably at least partially composed while in Munich,
              helped Gabrieli to gain the post.
          }
          \vspace #1
          \wordwrap {
              As suggested on the 1565 title page, instrumental support or substitution
              is optional but worth considering.
	  }
	  \vspace #3
	  .
    }
}

%% 5b - Plainsong incipit - obviously, comment out as required.
%\score   {
%    \transpose c \TranspositionInterval <<
%          \new Staff \with { \remove "Time_signature_engraver" \remove "Ambitus_engraver" } {
%                \set Staff.instrumentName = "Intonation"
%                \clef "treble_8"  \global  \cadenzaOn              <<  {
%                          \override Voice.Slur #'tran%sparent = ##f
%                          f4 s8 f4 s8 f4( g4) s8 g4.
%                      }\addlyrics {  In -- ci -- pit here. }
%               >>
%          }
%     >>
%    \layout {\context { \Voice \remove "Stem_engraver" } }
%}


% 5c - Prefatory staves
\layout {   % Need to modify a couple of settings in the main score layout as well
             indent=4\cm
              \context { \Staff
                         \override InstrumentName #'padding = 2
                         \override InstrumentName #'self-alignment-X = #RIGHT
              }
}
PrefatorySettings = {
  		%\override NoteHead   #'style = #'neomensural      % ie. can set to either Mensural or Neomensural
		%\override Rest #'style = #'neomensural
		%\override Staff.TimeSignature #'style = #'neomensural
                \override Flag #'style = #'mensural
                \autoBeamOff
                 \override Staff.InstrumentName #'Y-extent = #'(-4 . 4)
                 \override Staff.InstrumentName #'self-alignment-X = #RIGHT
                \override Staff.InstrumentName #'padding = 2
                % Uncomment these if you want eg. double b flat in key sig using c2 or f3 clef etc
                % May also have to tweak the numbers (4 vs 5 etc)
                \override Staff.KeySignature.flat-positions = #'((-4 . 4))
                \override Staff.KeySignature.sharp-positions = #'((-4 . 4))
                \cadenzaOn
                \key c \major
		\time 2/2
                \huge
}
PrefatoryLayout = \layout {   % Set the layout inside the incipit
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver

		}
                \context { \Staff \remove Ambitus_engraver}
		line-width=5
                indent =  0
                ragged-right = ##f
		ragged-last = ##f
                system-count = #1
}
PrefStaveA = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveALabel
                    \PrefatorySettings
                    \clef "petrucci-g2"
                    d''\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveB = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveBLabel
                    \PrefatorySettings
                    \clef "petrucci-c2"
                    g'\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveC = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveCLabel
                    \PrefatorySettings
                    \clef "petrucci-c3"
                    d'\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveD = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveDLabel
                    \PrefatorySettings
                    \clef "petrucci-c3"
                    d'\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveE = \markup {
	\score {
          \new MensuralVoice {
                    \set Staff.instrumentName=\StaveELabel
                    \PrefatorySettings
                    \clef "petrucci-f3"
                    g\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveF = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveFLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    g2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveG = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveGLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    g2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveH = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveHLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    f2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}





\version "2.18"