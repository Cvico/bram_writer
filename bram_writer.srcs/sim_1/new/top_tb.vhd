library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

library work;


entity top_tb is
end top_tb;

architecture Behavioral of top_tb is
    constant clk_period : time := 10 ns;
    constant wbits : integer := 18;
    constant abits : integer := 10;
    signal clk : std_logic := '1';
    signal enable : std_logic := '0';
    signal write_enable : std_logic := '0';
    signal addr : std_logic_vector(abits-1 downto 0) := "0000000001";
    signal data_input : std_logic_vector(wbits-1 downto 0) := "000000000000000001"; 
    signal data_output : std_logic_vector(wbits-1 downto 0);   
begin
    top_inst : entity work.top
    generic map(
        wbits => 18,
        abits => 10
    )
    port map(
        clk => clk,
        enable => enable,
        write_enable => write_enable,
        addr => addr,
        data_input => data_input,
        data_output => data_output
    );
    
    clk <= not clk after ( clk_period / 2.0);
    
    process
    begin
        -- Read data
        enable <= '1';
        wait for (clk_period);
        
        -- Allow for writing
        write_enable <= '1';
        
        wait for (clk_period);
        write_enable <= '0';
        
    end process;
        
end Behavioral;
