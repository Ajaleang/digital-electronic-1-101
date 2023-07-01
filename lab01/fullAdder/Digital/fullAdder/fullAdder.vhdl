-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity halfAdder is
  port (
    x: in std_logic;
    y: in std_logic;
    s: out std_logic;
    c: out std_logic);
end halfAdder;

architecture Behavioral of halfAdder is
begin
  s <= (x XOR y);
  c <= (x AND y);
end Behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity main is
  port (
    b: in std_logic;
    a: in std_logic;
    ci: in std_logic;
    co: out std_logic;
    s: out std_logic);
end main;

architecture Behavioral of main is
  signal s0: std_logic;
  signal s1: std_logic;
  signal s2: std_logic;
begin
  gate0: entity work.halfAdder
    port map (
      x => a,
      y => b,
      s => s0,
      c => s1);
  gate1: entity work.halfAdder
    port map (
      x => ci,
      y => s0,
      s => s,
      c => s2);
  co <= (s2 OR s1);
end Behavioral;
