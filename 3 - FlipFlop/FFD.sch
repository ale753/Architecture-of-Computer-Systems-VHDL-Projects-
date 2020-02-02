<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Q2N" />
        <signal name="Q3" />
        <signal name="Q3N" />
        <signal name="D" />
        <signal name="Q1" />
        <signal name="Q1N" />
        <signal name="CLK" />
        <signal name="Q2" />
        <port polarity="Output" name="Q3" />
        <port polarity="Output" name="Q3N" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="CLK" />
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <blockdef name="nor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="216" y1="-128" y2="-128" x1="256" />
            <circle r="12" cx="204" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
        </blockdef>
        <block symbolname="nor2" name="g4">
            <blockpin signalname="Q2N" name="I0" />
            <blockpin signalname="Q1N" name="I1" />
            <blockpin signalname="Q2" name="O" />
        </block>
        <block symbolname="nor2" name="g5">
            <blockpin signalname="Q1" name="I0" />
            <blockpin signalname="Q3" name="I1" />
            <blockpin signalname="Q3N" name="O" />
        </block>
        <block symbolname="nor3" name="g2">
            <blockpin signalname="Q1N" name="I0" />
            <blockpin signalname="CLK" name="I1" />
            <blockpin signalname="Q2N" name="I2" />
            <blockpin signalname="Q1" name="O" />
        </block>
        <block symbolname="nor2" name="g1">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="Q1" name="I1" />
            <blockpin signalname="Q1N" name="O" />
        </block>
        <block symbolname="nor2" name="g6">
            <blockpin signalname="Q3N" name="I0" />
            <blockpin signalname="Q2N" name="I1" />
            <blockpin signalname="Q3" name="O" />
        </block>
        <block symbolname="nor2" name="g3">
            <blockpin signalname="CLK" name="I0" />
            <blockpin signalname="Q2" name="I1" />
            <blockpin signalname="Q2N" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="432" name="g4" orien="R0" />
        <instance x="1488" y="880" name="g5" orien="R0" />
        <branch name="Q2N">
            <wire x2="848" y1="368" y2="368" x1="784" />
            <wire x2="784" y1="368" y2="464" x1="784" />
            <wire x2="1104" y1="464" y2="464" x1="784" />
            <wire x2="1104" y1="464" y2="528" x1="1104" />
            <wire x2="1168" y1="528" y2="528" x1="1104" />
            <wire x2="1168" y1="528" y2="656" x1="1168" />
            <wire x2="1488" y1="528" y2="528" x1="1168" />
            <wire x2="784" y1="656" y2="832" x1="784" />
            <wire x2="912" y1="832" y2="832" x1="784" />
            <wire x2="1168" y1="656" y2="656" x1="784" />
        </branch>
        <branch name="Q3">
            <wire x2="1824" y1="704" y2="704" x1="1408" />
            <wire x2="1408" y1="704" y2="752" x1="1408" />
            <wire x2="1488" y1="752" y2="752" x1="1408" />
            <wire x2="1824" y1="560" y2="560" x1="1744" />
            <wire x2="1920" y1="560" y2="560" x1="1824" />
            <wire x2="1824" y1="560" y2="704" x1="1824" />
        </branch>
        <branch name="Q3N">
            <wire x2="1488" y1="592" y2="592" x1="1408" />
            <wire x2="1408" y1="592" y2="640" x1="1408" />
            <wire x2="1808" y1="640" y2="640" x1="1408" />
            <wire x2="1808" y1="640" y2="784" x1="1808" />
            <wire x2="1920" y1="784" y2="784" x1="1808" />
            <wire x2="1808" y1="784" y2="784" x1="1744" />
        </branch>
        <rect width="488" x="796" y="812" height="512" />
        <rect width="516" x="716" y="204" height="496" />
        <text style="fontsize:36;fontname:Arial" x="720" y="180">Latch2</text>
        <instance x="912" y="1024" name="g2" orien="R0" />
        <branch name="D">
            <wire x2="864" y1="1184" y2="1184" x1="560" />
            <wire x2="880" y1="1184" y2="1184" x1="864" />
        </branch>
        <branch name="Q1">
            <wire x2="1248" y1="1072" y2="1072" x1="816" />
            <wire x2="816" y1="1072" y2="1120" x1="816" />
            <wire x2="880" y1="1120" y2="1120" x1="816" />
            <wire x2="1248" y1="896" y2="896" x1="1168" />
            <wire x2="1328" y1="896" y2="896" x1="1248" />
            <wire x2="1248" y1="896" y2="1072" x1="1248" />
            <wire x2="1328" y1="816" y2="896" x1="1328" />
            <wire x2="1488" y1="816" y2="816" x1="1328" />
        </branch>
        <instance x="880" y="1248" name="g1" orien="R0" />
        <branch name="Q1N">
            <wire x2="848" y1="304" y2="304" x1="656" />
            <wire x2="656" y1="304" y2="1360" x1="656" />
            <wire x2="1232" y1="1360" y2="1360" x1="656" />
            <wire x2="912" y1="960" y2="1024" x1="912" />
            <wire x2="1168" y1="1024" y2="1024" x1="912" />
            <wire x2="1168" y1="1024" y2="1152" x1="1168" />
            <wire x2="1232" y1="1152" y2="1152" x1="1168" />
            <wire x2="1232" y1="1152" y2="1360" x1="1232" />
            <wire x2="1168" y1="1152" y2="1152" x1="1136" />
        </branch>
        <text style="fontsize:36;fontname:Arial" x="1396" y="424">Latch3</text>
        <rect width="476" x="1388" y="448" height="444" />
        <instance x="1488" y="656" name="g6" orien="R0" />
        <branch name="CLK">
            <wire x2="688" y1="688" y2="688" x1="576" />
            <wire x2="688" y1="688" y2="896" x1="688" />
            <wire x2="880" y1="896" y2="896" x1="688" />
            <wire x2="912" y1="896" y2="896" x1="880" />
            <wire x2="688" y1="560" y2="688" x1="688" />
            <wire x2="848" y1="560" y2="560" x1="688" />
        </branch>
        <branch name="Q2">
            <wire x2="1184" y1="432" y2="432" x1="768" />
            <wire x2="768" y1="432" y2="496" x1="768" />
            <wire x2="848" y1="496" y2="496" x1="768" />
            <wire x2="1120" y1="336" y2="336" x1="1104" />
            <wire x2="1184" y1="336" y2="336" x1="1120" />
            <wire x2="1184" y1="336" y2="432" x1="1184" />
        </branch>
        <instance x="848" y="624" name="g3" orien="R0" />
        <text style="fontsize:36;fontname:Arial" x="820" y="792">Latch1</text>
        <iomarker fontsize="28" x="1920" y="784" name="Q3N" orien="R0" />
        <iomarker fontsize="28" x="576" y="688" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1920" y="560" name="Q3" orien="R0" />
        <iomarker fontsize="28" x="560" y="1184" name="D" orien="R180" />
    </sheet>
</drawing>