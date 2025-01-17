--------------------------------------------------------------------
-- Name:	Chris Coulston
-- Date:	Feb 3, 2015 
-- Modified:	Fall 2022
-- File:	lab2_fsm.vhdl
-- HW:	Lab2
--	Crs:	ECE 383
--
-- Purp: The control unit for the audio Oscope
--
-- Documentation:	No help, though I used an example from my Digital
--						Design text book.
--
-- Academic Integrity Statement: I certify that, while others may have 
-- assisted me in brain storming, debugging and validating this program, 
-- the program itself is my own work. I understand that submitting code 
-- which is the work of other individuals is a violation of the honor   
-- code.  I also understand that if I knowingly give my original work to 
-- another individual is also a violation of the honor code. 
-------------------------------------------------------------------------

-------- libraries --------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.signalAcquire_Package.all; -- include your library here with added components ac97, ac97cmd

-------- entity --------
entity signalAcquire_Ctrlpath is
    PORT(clk : in  STD_LOGIC;
         resetn : in  STD_LOGIC;
         sw: in STD_LOGIC_VECTOR(SW_WIDTH - 1 downto 0);
         cw: out STD_LOGIC_VECTOR (CW_WIDTH - 1 downto 0));
end signalAcquire_Ctrlpath;

-------- architecture --------
architecture Behavioral of signalAcquire_Ctrlpath is
	signal state: state_type;
	signal short, long, trigger, busy, recorded8: std_logic;
begin
	---- component mapping ----
    short <= sw(SHORTDONE_SW_INDEX); -- short timer ended
    long <= sw(LONGDONE_SW_INDEX); -- long timer ended
    trigger <= sw(TRIGGER_SW_INDEX); -- sample trigger 
    busy <= sw(BUSY_SW_INDEX); -- ADC busy with conversion
    recorded8 <= sw(RECORDED8_SW_INDEX); -- 8 channel samples recorded
    
	---- change states ----
	state_proces: process(clk)
	begin
		if (rising_edge(clk)) then
			if (resetn = '0') then 
				state <= RESET;
			else 
				case state is
		            when RESET =>
		            	state <= STABILIZE;
		            when STABILIZE =>
		            	if(long = '1') then
		            		state <= RESETADC;
		            	end if;
		            when RESETADC =>
		            	if(short = '1') then
		            		state <= WAITTRIGGER;
		            	end if;
		            when WAITTRIGGER =>
		            	if(trigger = '1') then
		            		state <= ASSERTCONV;
		            	end if;
		            when ASSERTCONV =>
		            	if(short = '1') then
		            		state <= WHILEBUSY0;
		            	end if;
		            when WHILEBUSY0 =>
		            	if(busy = '1') then
		            		state <= WHILEBUSY1;
		            	end if;
		            when WHILEBUSY1 =>
		            	if(busy = '0') then
		            		state <= PAUSE;
		            	end if;
		            when PAUSE =>
		            	if(short = '1') then
		            		state <= LATCH;
		            	end if;
		            when LATCH =>
		            	state <= RECORDSAMP;
		            when RECORDSAMP =>
		            	if(short = '1') then
		            		state <= CLRSHORTDELAY;
		            	end if;
		            when CLRSHORTDELAY =>
		            	if(recorded8 = '1') then
		            		state <= WAITTRIGGER;
		            	else
		            		state <= PAUSE;
		            	end if;
				end case;
			end if;
		end if;
	end process;

    ---- define control word ----
    -- control word: adcConvert & adcRead & adcCS & adcReset & longCount & shortCount & regCount & regWrite
    -- counter control word: reset-11, hold-00, count-10, load-01
	output_process: process (state)
	begin
	    case state is
            when RESET => cw <= "111011----0";
            when STABILIZE => cw <= "11101011--0";
            when RESETADC => cw <= "1111--10--0";
            when WAITTRIGGER => cw <= "1110--11--0";
            when ASSERTCONV => cw <= "0110--10--0";
            when WHILEBUSY0 => cw <= "1110------0";
            when WHILEBUSY1 => cw <= "1110--11110";
            when PAUSE => cw <= "1100--10000";
            when LATCH => cw <= "1100--11000";
            when RECORDSAMP => cw <= "1000--10001";
            when CLRSHORTDELAY => cw <= "1100----100";
		end case;
	end process;
end Behavioral;