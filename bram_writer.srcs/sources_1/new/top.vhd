library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity top is
  generic ( wbits : integer := 18;
            abits : integer := 10
          );
  Port ( clk : in std_logic;
         enable : in std_logic;
         write_enable : in std_logic;
         addr : in std_logic_vector(abits-1 downto 0);
         data_input : in std_logic_vector(wbits-1 downto 0); 
         data_output : out std_logic_vector(wbits-1 downto 0)
        );
end top;

architecture Behavioral of top is
    type ram_type is array(2**abits-1 downto 0) of std_logic_vector(wbits-1 downto 0);
    signal RAM : ram_type;
    signal read_addr : std_logic_vector(abits-1 downto 0);
begin 
    process (clk)
    begin
        if (clk'event and clk = '1') then
            if (enable = '1') then
                if (write_enable = '1') then
                    RAM(to_integer(unsigned(addr))) <= data_input;
                else
                    data_output <= RAM(to_integer(unsigned(addr)));
                end if;
            end if;
        end if;                
    end process;    
end Behavioral;
