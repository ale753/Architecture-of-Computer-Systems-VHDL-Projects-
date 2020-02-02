<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="CLK" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="Q" />
        <signal name="Q1" />
        <signal name="D" />
        <signal name="XLXN_41" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="Q" />
        <port polarity="Output" name="Q1" />
        <port polarity="Input" name="D" />
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="nor2" name="g2">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="nor2" name="g1">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and2" name="a2">
            <blockpin signalname="CLK" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="a1">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="CLK" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="not2">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="nor2" name="g4">
            <blockpin signalname="Q" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="Q1" name="O" />
        </block>
        <block symbolname="nor2" name="g3">
            <blockpin signalname="XLXN_28" name="I0" />
            <blockpin signalname="Q1" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="and2" name="a4">
            <blockpin signalname="XLXN_41" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and2" name="a3">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="XLXN_41" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="inv" name="not1">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="688" name="g1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1424" y1="528" y2="528" x1="1024" />
            <wire x2="1024" y1="528" y2="560" x1="1024" />
            <wire x2="1088" y1="560" y2="560" x1="1024" />
            <wire x2="1424" y1="384" y2="384" x1="1344" />
            <wire x2="1424" y1="384" y2="528" x1="1424" />
            <wire x2="1696" y1="384" y2="384" x1="1424" />
            <wire x2="1696" y1="384" y2="672" x1="1696" />
            <wire x2="2000" y1="672" y2="672" x1="1696" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1088" y1="624" y2="624" x1="944" />
        </branch>
        <instance x="688" y="720" name="a1" orien="R0" />
        <branch name="CLK">
            <wire x2="304" y1="496" y2="496" x1="240" />
            <wire x2="304" y1="496" y2="800" x1="304" />
            <wire x2="608" y1="800" y2="800" x1="304" />
            <wire x2="672" y1="496" y2="496" x1="304" />
            <wire x2="672" y1="496" y2="592" x1="672" />
            <wire x2="688" y1="592" y2="592" x1="672" />
            <wire x2="672" y1="384" y2="496" x1="672" />
        </branch>
        <instance x="352" y="688" name="not2" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="688" y1="656" y2="656" x1="576" />
        </branch>
        <instance x="2400" y="480" name="g4" orien="R0" />
        <instance x="2400" y="704" name="g3" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="2400" y1="640" y2="640" x1="2256" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2400" y1="352" y2="352" x1="2256" />
        </branch>
        <instance x="2000" y="736" name="a3" orien="R0" />
        <branch name="Q">
            <wire x2="2400" y1="416" y2="416" x1="2336" />
            <wire x2="2336" y1="416" y2="496" x1="2336" />
            <wire x2="2688" y1="496" y2="496" x1="2336" />
            <wire x2="2688" y1="496" y2="608" x1="2688" />
            <wire x2="2928" y1="608" y2="608" x1="2688" />
            <wire x2="2688" y1="608" y2="608" x1="2656" />
        </branch>
        <branch name="Q1">
            <wire x2="2736" y1="528" y2="528" x1="2336" />
            <wire x2="2336" y1="528" y2="576" x1="2336" />
            <wire x2="2400" y1="576" y2="576" x1="2336" />
            <wire x2="2736" y1="384" y2="384" x1="2656" />
            <wire x2="2928" y1="384" y2="384" x1="2736" />
            <wire x2="2736" y1="384" y2="528" x1="2736" />
        </branch>
        <branch name="D">
            <wire x2="352" y1="320" y2="320" x1="272" />
            <wire x2="672" y1="320" y2="320" x1="352" />
            <wire x2="352" y1="320" y2="656" x1="352" />
        </branch>
        <instance x="608" y="832" name="not1" orien="R0" />
        <rect width="924" x="604" y="168" height="580" />
        <text style="fontsize:32;fontname:Arial" x="616" y="148">Latch SR Master</text>
        <rect width="836" x="1948" y="168" height="628" />
        <text style="fontsize:32;fontname:Arial" x="1960" y="152">Latch SR Slave</text>
        <iomarker fontsize="28" x="2928" y="384" name="Q1" orien="R0" />
        <iomarker fontsize="28" x="2928" y="608" name="Q" orien="R0" />
        <iomarker fontsize="28" x="240" y="496" name="CLK" orien="R180" />
        <instance x="1088" y="480" name="g2" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1088" y1="352" y2="352" x1="928" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1088" y1="416" y2="416" x1="1024" />
            <wire x2="1024" y1="416" y2="480" x1="1024" />
            <wire x2="1376" y1="480" y2="480" x1="1024" />
            <wire x2="1376" y1="480" y2="592" x1="1376" />
            <wire x2="1760" y1="592" y2="592" x1="1376" />
            <wire x2="1376" y1="592" y2="592" x1="1344" />
            <wire x2="1760" y1="320" y2="592" x1="1760" />
            <wire x2="2000" y1="320" y2="320" x1="1760" />
        </branch>
        <instance x="672" y="448" name="a2" orien="R0" />
        <iomarker fontsize="28" x="272" y="320" name="D" orien="R180" />
        <instance x="2000" y="448" name="a4" orien="R0" />
        <branch name="XLXN_41">
            <wire x2="1904" y1="800" y2="800" x1="832" />
            <wire x2="1984" y1="512" y2="512" x1="1904" />
            <wire x2="1984" y1="512" y2="608" x1="1984" />
            <wire x2="2000" y1="608" y2="608" x1="1984" />
            <wire x2="1904" y1="512" y2="800" x1="1904" />
            <wire x2="2000" y1="384" y2="384" x1="1984" />
            <wire x2="1984" y1="384" y2="512" x1="1984" />
        </branch>
    </sheet>
</drawing>