<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_5" />
        <signal name="D" />
        <signal name="Q2N" />
        <signal name="Q2" />
        <signal name="Q1" />
        <signal name="Q" />
        <signal name="XLXN_42" />
        <signal name="CLK" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="Q2N" />
        <port polarity="Output" name="Q2" />
        <port polarity="Input" name="CLK" />
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
        <block symbolname="and2" name="a3">
            <blockpin signalname="XLXN_42" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="Q" name="O" />
        </block>
        <block symbolname="and2" name="a2">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="Q1" name="O" />
        </block>
        <block symbolname="nor2" name="g3">
            <blockpin signalname="Q2" name="I0" />
            <blockpin signalname="Q" name="I1" />
            <blockpin signalname="Q2N" name="O" />
        </block>
        <block symbolname="nor2" name="g2">
            <blockpin signalname="Q1" name="I0" />
            <blockpin signalname="Q2N" name="I1" />
            <blockpin signalname="Q2" name="O" />
        </block>
        <block symbolname="inv" name="INV3">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="INV1">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="and2" name="a1">
            <blockpin signalname="XLXN_69" name="I0" />
            <blockpin signalname="CLK" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="inv" name="INV2">
            <blockpin signalname="XLXN_68" name="I" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1664" y="384" name="a3" orien="R0" />
        <instance x="1648" y="688" name="a2" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1648" y1="624" y2="624" x1="1616" />
        </branch>
        <branch name="D">
            <wire x2="1360" y1="256" y2="256" x1="1088" />
            <wire x2="1664" y1="256" y2="256" x1="1360" />
            <wire x2="1360" y1="256" y2="624" x1="1360" />
            <wire x2="1392" y1="624" y2="624" x1="1360" />
        </branch>
        <branch name="Q2N">
            <wire x2="2080" y1="480" y2="560" x1="2080" />
            <wire x2="2144" y1="560" y2="560" x1="2080" />
            <wire x2="2512" y1="480" y2="480" x1="2080" />
            <wire x2="2512" y1="320" y2="320" x1="2416" />
            <wire x2="2624" y1="320" y2="320" x1="2512" />
            <wire x2="2512" y1="320" y2="480" x1="2512" />
        </branch>
        <branch name="Q2">
            <wire x2="2160" y1="352" y2="352" x1="2080" />
            <wire x2="2080" y1="352" y2="432" x1="2080" />
            <wire x2="2432" y1="432" y2="432" x1="2080" />
            <wire x2="2432" y1="432" y2="592" x1="2432" />
            <wire x2="2608" y1="592" y2="592" x1="2432" />
            <wire x2="2432" y1="592" y2="592" x1="2400" />
        </branch>
        <branch name="Q1">
            <wire x2="1920" y1="592" y2="592" x1="1904" />
            <wire x2="1920" y1="592" y2="624" x1="1920" />
            <wire x2="2144" y1="624" y2="624" x1="1920" />
        </branch>
        <branch name="Q">
            <wire x2="2160" y1="288" y2="288" x1="1920" />
        </branch>
        <instance x="2160" y="416" name="g3" orien="R0" />
        <instance x="1392" y="656" name="INV3" orien="R0" />
        <iomarker fontsize="28" x="2608" y="592" name="Q2" orien="R0" />
        <iomarker fontsize="28" x="2624" y="320" name="Q2N" orien="R0" />
        <iomarker fontsize="28" x="1088" y="256" name="D" orien="R180" />
        <instance x="2144" y="688" name="g2" orien="R0" />
        <branch name="CLK">
            <wire x2="576" y1="512" y2="512" x1="512" />
            <wire x2="1072" y1="512" y2="512" x1="576" />
            <wire x2="576" y1="512" y2="576" x1="576" />
            <wire x2="592" y1="576" y2="576" x1="576" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="832" y1="576" y2="576" x1="816" />
        </branch>
        <instance x="1072" y="640" name="a1" orien="R0" />
        <branch name="XLXN_69">
            <wire x2="1072" y1="576" y2="576" x1="1056" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1392" y1="544" y2="544" x1="1328" />
            <wire x2="1392" y1="480" y2="544" x1="1392" />
            <wire x2="1472" y1="480" y2="480" x1="1392" />
            <wire x2="1472" y1="480" y2="560" x1="1472" />
            <wire x2="1648" y1="560" y2="560" x1="1472" />
            <wire x2="1664" y1="320" y2="320" x1="1472" />
            <wire x2="1472" y1="320" y2="480" x1="1472" />
        </branch>
        <instance x="832" y="608" name="INV2" orien="R0" />
        <instance x="592" y="608" name="INV1" orien="R0" />
        <iomarker fontsize="28" x="512" y="512" name="CLK" orien="R180" />
    </sheet>
</drawing>