-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = Static { xpos = 0, ypos = 0, width = 1920, height = 16 },
    lowerOnStart = True,
    commands = [
        Run Weather "KCID" ["-t","<tempF>F <skyCondition>","-L","64","-H","77","-n","#CEFFAC","-h","#FFB6B0","-l","#96CBFE"] 36000,
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 30,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 30,
 --       Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 30,
--        Run Network "eth1" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 30,
	Run Network "eth0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 30,
	--Run DiskU [("sdb1", ",")] ["-L", "20", "-H", "50", "-m", "1", "-p", "3"] 20,
        Run Date "%a %b %_d %l:%M" "date" 10,
--		Run MPD ["-t","<composer> <title> (<album>) <track>/<plength> "] 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
--    template = "%StdinReader% }{ %multicpu%   %memory%   %swap%  %eth0%   %eth1%   <fc=#FFFFCC>%date%</fc>   %KCID%"
    template = "%StdinReader% }{  %multicpu%   %memory%   %eth0%    <fc=#FFFFCC>%date%</fc>   %KCID%"
}
