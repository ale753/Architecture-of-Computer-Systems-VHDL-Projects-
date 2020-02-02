<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D" />
        <signal name="Q2N" />
        <signal name="Q2" />
        <signal name="XLXN_10" />
        <signal name="Q1" />
        <signal name="Q" />
        <signal name="XLXN_23" />
        <signal name="CLK" />
        <signal name="XLXN_26" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="Q2N" />
        <port polarity="Output" name="Q2" />
        <port polarity="Input" name="CLK" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
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
        <block symbolname="nand2" name="a2">
            <blockpin signalname="Q2" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Q2N" name="O" />
        </block>
        <block symbolname="nand2" name="a1">
            <blockpin signalname="Q1" name="I0" />
            <blockpin signalname="Q2N" name="I1" />
            <blockpin signalname="Q2" name="O" />
        </block>
        <block symbolname="or2" name="g3">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="or2" name="g2">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="Q1" name="O" />
        </block>
        <block symbolname="inv" name="INV2">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="nor2" name="g1">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="CLK" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="inv" name="INV1">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="D">
            <wire x2="1088" y1="416" y2="416" x1="848" />
            <wire x2="1552" y1="416" y2="416" x1="1088" />
            <wire x2="1088" y1="416" y2="768" x1="1088" />
            <wire x2="1136" y1="768" y2="768" x1="1088" />
        </branch>
        <instance x="2144" y="576" name="a2" orien="R0" />
        <instance x="2144" y="800" name="a1" orien="R0" />
        <branch name="Q2N">
            <wire x2="2080" y1="592" y2="672" x1="2080" />
            <wire x2="2144" y1="672" y2="672" x1="2080" />
            <wire x2="2544" y1="592" y2="592" x1="2080" />
            <wire x2="2544" y1="480" y2="480" x1="2400" />
            <wire x2="2752" y1="480" y2="480" x1="2544" />
            <wire x2="2544" y1="480" y2="592" x1="2544" />
        </branch>
        <branch name="Q2">
            <wire x2="2144" y1="512" y2="512" x1="2064" />
            <wire x2="2064" y1="512" y2="576" x1="2064" />
            <wire x2="2512" y1="576" y2="576" x1="2064" />
            <wire x2="2512" y1="576" y2="704" x1="2512" />
            <wire x2="2752" y1="704" y2="704" x1="2512" />
            <wire x2="2512" y1="704" y2="704" x1="2400" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1536" y1="768" y2="768" x1="1360" />
        </branch>
        <instance x="1552" y="544" name="g3" orien="R0" />
        <instance x="1536" y="832" name="g2" orien="R0" />
        <branch name="Q1">
            <wire x2="2144" y1="736" y2="736" x1="1792" />
        </branch>
        <branch name="Q">
            <wire x2="2144" y1="448" y2="448" x1="1808" />
        </branch>
        <instance x="1136" y="800" name="INV2" orien="R0" />
        <instance x="800" y="704" name="g1" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="1296" y1="608" y2="608" x1="1056" />
            <wire x2="1296" y1="608" y2="704" x1="1296" />
            <wire x2="1536" y1="704" y2="704" x1="1296" />
            <wire x2="1296" y1="480" y2="608" x1="1296" />
            <wire x2="1552" y1="480" y2="480" x1="1296" />
        </branch>
        <branch name="CLK">
            <wire x2="528" y1="576" y2="576" x1="496" />
            <wire x2="544" y1="576" y2="576" x1="528" />
            <wire x2="784" y1="576" y2="576" x1="544" />
            <wire x2="800" y1="576" y2="576" x1="784" />
            <wire x2="528" y1="576" y2="640" x1="528" />
            <wire x2="544" y1="640" y2="640" x1="528" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="800" y1="640" y2="640" x1="768" />
        </branch>
        <instance x="544" y="672" name="INV1" orien="R0" />
        <iomarker fontsize="28" x="2752" y="480" name="Q2N" orien="R0" />
        <iomarker fontsize="28" x="2752" y="704" name="Q2" orien="R0" />
        <iomarker fontsize="28" x="848" y="416" name="D" orien="R180" />
        <iomarker fontsize="28" x="496" y="576" name="CLK" orien="R180" />
    </sheet>
</drawing>