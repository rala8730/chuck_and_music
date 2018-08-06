//Gain adds amplifier
//SinOsc s1 => Gain g =>dac;
SinOsc s1=>PRCRev g=> dac;
SinOsc s2 =>g;
while(true){
    100::ms=>now;
    Std.rand2f(30.0,1000.0)=>s1.freq;
    .5=>g.gain=>g.mix;
    500=>s1.freq=>s2.freq;
    //.5=>s1.gain;
    s1.freq()*2=>s1.freq;
}
