simvision {



	window new WaveWindow -name "Waves for dice simulator"
	waveform using "Waves for dice simulator"
	
	waveform add -signals dice_stim.Clock
	waveform add -signals dice_stim.nReset
	waveform add -signals dice_stim.TL
	waveform add -signals dice_stim.ML
	waveform add -signals dice_stim.BL
	waveform add -signals dice_stim.MC
	waveform add -signals dice_stim.TR
	waveform add -signals dice_stim.MR
	waveform add -signals dice_stim.BR
	waveform add -signals dice_stim.DiceValue
	waveform add -signals dice_stim.Ran
	
	
	#====================================================
	
	window new RegisterWindow -name "Registers for dice simulation"
	register using "Registers for dice simulation"
	
	register addtype -type signalvalue -x0 20 -y0 30 -radix %d dice_stim.TL
	register addtype -type signalvalue -x0 20 -y0 50 -radix %d dice_stim.ML
	register addtype -type signalvalue -x0 20 -y0 70 -radix %d dice_stim.BL
		
	register addtype -type signalvalue -x0 50 -y0 50 -radix %d dice_stim.MC
	
	register addtype -type signalvalue -x0 80 -y0 30 -radix %d dice_stim.TR
	register addtype -type signalvalue -x0 80 -y0 50 -radix %d dice_stim.MR
	register addtype -type signalvalue -x0 80 -y0 70 -radix %d dice_stim.BR
	
	register addtype -type signalvalue -x0 100 -y0 100 -radix %d dice_stim.DiceValue
	register addtype -type signalvalue -x0 100 -y0 120 -radix %d dice_stim.Ran
	
	register addtype -type rectangle -x0 5 -y0 5 -x1 100 -y1 90 -outline white
	register addtype -type line -x0 5 -y0 25 -x1 100 -y1 25 
	register addtype -type text -x0 20 -y0 10 -text {Dice Display}
	register addtype -type text -x0 20 -y0 100 -text {DiceValue: }
	register addtype -type text -x0 20 -y0 120 -text {Ran      : }
	
	
	
	
}
