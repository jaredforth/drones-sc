~octave_synth = { arg a, b;  { [SinOsc.ar(a, 0, 0.2), SinOsc.ar(b, 0, 0.2) ] } };

c = ~octave_synth.value(65.4, 130.8);
~cis_des = ~octave_synth.value(69.3, 138.6);
d = ~octave_synth.value(73.4, 146.8);
~dis_ees = ~octave_synth.value(77.8, 155.6);
e = ~octave_synth.value(41.2, 82.4);
f = ~octave_synth.value(43.7, 87.3);
~fis_ges = ~octave_synth.value(46.2, 92.5);
g = ~octave_synth.value(49.0, 98.0);
~gis_aes = ~octave_synth.value(51.9, 103.8);
a = ~octave_synth.value(55.0, 110.0);
~ais_bes = ~octave_synth.value(58.3, 116.5);
b = ~octave_synth.value(58.3, 116.5);

c.play;
~cis_des.play;
d.play;
~dis_ees.play;
e.play;
f.play;
~fis_ges.play;
g.play;
~gis_aes.play;
a.play;
~ais_bes.play;
b.play;
