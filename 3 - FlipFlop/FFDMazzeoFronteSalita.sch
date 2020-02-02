<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q2N" />
        <signal name="Q2" />
        <signal name="Q1N" />
        <signal name="Q1" />
        <signal name="CLK" />
        <signal name="D" />
        <signal name="Q3" />
        <signal name="Q3N" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="Q3" />
        <port polarity="Output" name="Q3N" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="nand3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="nand2" name="g4">
            <blockpin signalname="Q2N" name="I0" />
            <blockpin signalname="Q1N" name="I1" />
            <blockpin signalname="Q2" name="O" />
        </block>
        <block symbolname="nand2" name="g6">
            <blockpin signalname="Q3N" name="I0" />
            <blockpin signalname="Q2N" name="I1" />
            <blockpin signalname="Q3" name="O" />
        </block>
        <block symbolname="nand2" name="g5">
            <blockpin signalname="Q1" name="I0" />
            <blockpin signalname="Q3" name="I1" />
            <blockpin signalname="Q3N" name="O" />
        </block>
        <block symbolname="nand3" name="g2">
            <blockpin signalname="Q1N" name="I0" />
            <blockpin signalname="CLK" name="I1" />
            <blockpin signalname="Q2N" name="I2" />
            <blockpin signalname="Q1" name="O" />
        </block>
        <block symbolname="nand2" name="g1">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="Q1" name="I1" />
            <blockpin signalname="Q1N" name="O" />
        </block>
        <block symbolname="nand2" name="g3">
            <blockpin signalname="CLK" name="I0" />
            <blockpin signalname="Q2" name="I1" />
            <blockpin signalname="Q2N" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="416" name="g4" orien="R0" />
        <instance x="1888" y="736" name="g6" orien="R0" />
        <instance x="1888" y="944" name="g5" orien="R0" />
        <instance x="1056" y="1056" name="g2" orien="R0" />
        <instance x="1040" y="1264" name="g1" orien="R0" />
        <branch name="Q2N">
            <wire x2="1056" y1="352" y2="352" x1="1040" />
            <wire x2="1040" y1="352" y2="432" x1="1040" />
            <wire x2="1312" y1="432" y2="432" x1="1040" />
            <wire x2="1312" y1="432" y2="544" x1="1312" />
            <wire x2="1312" y1="544" y2="608" x1="1312" />
            <wire x2="1888" y1="608" y2="608" x1="1312" />
            <wire x2="1312" y1="608" y2="752" x1="1312" />
            <wire x2="1056" y1="752" y2="864" x1="1056" />
            <wire x2="1312" y1="752" y2="752" x1="1056" />
        </branch>
        <instance x="1056" y="640" name="g3" orien="R0" />
        <branch name="Q2">
            <wire x2="1056" y1="512" y2="512" x1="976" />
            <wire x2="976" y1="512" y2="656" x1="976" />
            <wire x2="1344" y1="656" y2="656" x1="976" />
            <wire x2="1344" y1="320" y2="320" x1="1312" />
            <wire x2="1344" y1="320" y2="656" x1="1344" />
        </branch>
        <branch name="Q1N">
            <wire x2="1056" y1="288" y2="288" x1="896" />
            <wire x2="896" y1="288" y2="1280" x1="896" />
            <wire x2="1344" y1="1280" y2="1280" x1="896" />
            <wire x2="1056" y1="992" y2="1056" x1="1056" />
            <wire x2="1344" y1="1056" y2="1056" x1="1056" />
            <wire x2="1344" y1="1056" y2="1168" x1="1344" />
            <wire x2="1344" y1="1168" y2="1280" x1="1344" />
            <wire x2="1344" y1="1168" y2="1168" x1="1296" />
        </branch>
        <branch name="Q1">
            <wire x2="1040" y1="1088" y2="1136" x1="1040" />
            <wire x2="1376" y1="1088" y2="1088" x1="1040" />
            <wire x2="1376" y1="928" y2="928" x1="1312" />
            <wire x2="1376" y1="928" y2="1088" x1="1376" />
            <wire x2="1888" y1="880" y2="880" x1="1376" />
            <wire x2="1376" y1="880" y2="928" x1="1376" />
        </branch>
        <branch name="CLK">
            <wire x2="928" y1="752" y2="752" x1="704" />
            <wire x2="928" y1="752" y2="928" x1="928" />
            <wire x2="1056" y1="928" y2="928" x1="928" />
            <wire x2="1056" y1="576" y2="576" x1="928" />
            <wire x2="928" y1="576" y2="752" x1="928" />
        </branch>
        <branch name="D">
            <wire x2="1024" y1="1200" y2="1200" x1="688" />
            <wire x2="1040" y1="1200" y2="1200" x1="1024" />
        </branch>
        <branch name="Q3">
            <wire x2="2224" y1="736" y2="736" x1="1856" />
            <wire x2="1856" y1="736" y2="816" x1="1856" />
            <wire x2="1888" y1="816" y2="816" x1="1856" />
            <wire x2="2224" y1="640" y2="640" x1="2144" />
            <wire x2="2224" y1="640" y2="736" x1="2224" />
            <wire x2="2400" y1="640" y2="640" x1="2224" />
        </branch>
        <branch name="Q3N">
            <wire x2="1888" y1="672" y2="672" x1="1824" />
            <wire x2="1824" y1="672" y2="768" x1="1824" />
            <wire x2="2208" y1="768" y2="768" x1="1824" />
            <wire x2="2208" y1="768" y2="848" x1="2208" />
            <wire x2="2384" y1="848" y2="848" x1="2208" />
            <wire x2="2208" y1="848" y2="848" x1="2144" />
        </branch>
        <rect width="572" x="1748" y="504" height="484" />
        <rect width="464" x="980" y="828" height="428" />
        <text style="fontsize:32;fontname:Arial" x="980" y="812">Latch1</text>
        <iomarker fontsize="28" x="2400" y="640" name="Q3" orien="R0" />
        <iomarker fontsize="28" x="2384" y="848" name="Q3N" orien="R0" />
        <iomarker fontsize="28" x="704" y="752" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="688" y="1200" name="D" orien="R180" />
        <rect width="432" x="956" y="260" height="444" />
        <text style="fontsize:32;fontname:Arial" x="956" y="240">Latch2</text>
        <text style="fontsize:32;fontname:Arial" x="1744" y="484">Latch3</text>
    </sheet>
</drawing>