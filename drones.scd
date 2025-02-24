(
s = Server.default;

s.boot;

~octave_synth = { arg a, b;  { [SinOsc.ar(a, 0, 0.2), SinOsc.ar(b, 0, 0.2) ] } };

c = ~octave_synth.value(65.4, 130.8);
~cis_des = ~octave_synth.value(69.3, 138.6);
d = ~octave_synth.value(73.4, 146.8);
~dis_ees = ~octave_synth.value(77.8, 155.6);
e = ~octave_synth.value(82.4, 164.8);
f = ~octave_synth.value(87.3, 174.6);
~fis_ges = ~octave_synth.value(92.5, 185.0);
g = ~octave_synth.value(98.0, 196.0);
~gis_aes = ~octave_synth.value(51.9, 103.8);
a = ~octave_synth.value(55.0, 110.0);
~ais_bes = ~octave_synth.value(58.3, 116.5);
b = ~octave_synth.value(61.7, 123.5);

p = List.new(0);
~free_all = { p.do({ arg item; item.free }) };

~action_handler = { arg b, x; { b.value.asBoolean.if({ p.add(x.play) }, ~free_all ) } };

~btn_constructor = { arg k, l, t; Button.new(w,Rect(l,t,100,100)).states_([[k, Color.black, Color.white],["Pause", Color.white, Color.black]]) };


w = Window.new("Drones", Rect(600,400,500,380));

// First Row

~c_btn = ~btn_constructor.value("C", 20, 20);
~c_btn.action = ~action_handler.value(~c_btn, c);

~cis_des_btn = ~btn_constructor.value("C#/Db", 140, 20);
~cis_des_btn.action = ~action_handler.value(~cis_des_btn, ~cis_des);

~d_btn = ~btn_constructor.value("D", 260, 20);
~d_btn.action = ~action_handler.value(~d_btn, d);

~dis_ees_btn = ~btn_constructor.value("D#/Eb", 380, 20);
~dis_ees_btn.action = ~action_handler.value(~dis_ees_btn, ~dis_ees);

// Second Row

~e_btn = ~btn_constructor.value("E", 20, 140);
~e_btn.action = ~action_handler.value(~e_btn, e);

~f_btn = ~btn_constructor.value("F", 140, 140);
~f_btn.action = ~action_handler.value(~f_btn, f);

~fis_ges_btn = ~btn_constructor.value("F#/Gb", 260, 140);
~fis_ges_btn.action = ~action_handler.value(~fis_ges_btn, ~fis_ges);

~g_btn = ~btn_constructor.value("G", 380, 140);
~g_btn.action = ~action_handler.value(~g_btn, g);

// Third Row

~gis_aes_btn = ~btn_constructor.value("G#/Ab", 20, 260);
~gis_aes_btn.action = ~action_handler.value(~gis_aes_btn, ~gis_aes);

~a_btn = ~btn_constructor.value("A", 140, 260);
~a_btn.action = ~action_handler.value(~a_btn, a);

~ais_bes_btn = ~btn_constructor.value("A#/Bb", 260, 260);
~ais_bes_btn.action = ~action_handler.value(~ais_bes_btn, ~ais_bes);

~b_btn = ~btn_constructor.value("B", 380, 260);
~b_btn.action = ~action_handler.value(~b_btn, b);

w.front;
)
