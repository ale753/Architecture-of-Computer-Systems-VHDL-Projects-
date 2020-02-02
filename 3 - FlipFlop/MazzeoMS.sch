<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Y1" />
        <signal name="Q3" />
        <signal name="Q3N" />
        <signal name="CLOCK" />
        <signal name="X" />
        <signal name="D" />
        <signal name="W" />
        <signal name="Y" />
        <signal name="M" />
        <signal name="Z" />
        <signal name="W1" />
        <signal name="Z1" />
        <signal name="X1" />
        <signal name="XLXN_86" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <signal name="XLXN_108" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111" />
        <signal name="XLXN_112" />
        <port polarity="Output" name="Q3" />
        <port polarity="Output" name="Q3N" />
        <port polarity="Input" name="CLOCK" />
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
        <block symbolname="nor2" name="s4">
            <blockpin signalname="W1" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="Y1" name="O" />
        </block>
        <block symbolname="nor2" name="s3">
            <blockpin signalname="CLOCK" name="I0" />
            <blockpin signalname="Y1" name="I1" />
            <blockpin signalname="W1" name="O" />
        </block>
        <block symbolname="nor2" name="s6">
            <blockpin signalname="Q3N" name="I0" />
            <blockpin signalname="W1" name="I1" />
            <blockpin signalname="Q3" name="O" />
        </block>
        <block symbolname="nor2" name="s5">
            <blockpin signalname="Z1" name="I0" />
            <blockpin signalname="Q3" name="I1" />
            <blockpin signalname="Q3N" name="O" />
        </block>
        <block symbolname="nor2" name="s1">
            <blockpin signalname="M" name="I0" />
            <blockpin signalname="Z1" name="I1" />
            <blockpin signalname="X1" name="O" />
        </block>
        <block symbolname="nand2" name="m4">
            <blockpin signalname="W" name="I0" />
            <blockpin signalname="X" name="I1" />
            <blockpin signalname="Y" name="O" />
        </block>
        <block symbolname="nand2" name="m3">
            <blockpin signalname="CLOCK" name="I0" />
            <blockpin signalname="Y" name="I1" />
            <blockpin signalname="W" name="O" />
        </block>
        <block symbolname="nand2" name="m1">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="Z" name="I1" />
            <blockpin signalname="X" name="O" />
        </block>
        <block symbolname="nand3" name="m2">
            <blockpin signalname="X" name="I0" />
            <blockpin signalname="CLOCK" name="I1" />
            <blockpin signalname="W" name="I2" />
            <blockpin signalname="Z" name="O" />
        </block>
        <block symbolname="nor3" name="s2">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="CLOCK" name="I1" />
            <blockpin signalname="W1" name="I2" />
            <blockpin signalname="Z1" name="O" />
        </block>
        <block symbolname="nand2" name="m6">
            <blockpin signalname="XLXN_86" name="I0" />
            <blockpin signalname="W" name="I1" />
            <blockpin signalname="M" name="O" />
        </block>
        <block symbolname="nand2" name="m5">
            <blockpin signalname="Z" name="I0" />
            <blockpin signalname="M" name="I1" />
            <blockpin signalname="XLXN_86" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2112" y="736" name="s4" orien="R0" />
        <instance x="2112" y="928" name="s3" orien="R0" />
        <instance x="2752" y="1184" name="s5" orien="R0" />
        <branch name="Y1">
            <wire x2="2112" y1="800" y2="800" x1="2032" />
            <wire x2="2032" y1="800" y2="928" x1="2032" />
            <wire x2="2512" y1="928" y2="928" x1="2032" />
            <wire x2="2512" y1="640" y2="640" x1="2368" />
            <wire x2="2512" y1="640" y2="928" x1="2512" />
        </branch>
        <branch name="Q3">
            <wire x2="2672" y1="1008" y2="1056" x1="2672" />
            <wire x2="2752" y1="1056" y2="1056" x1="2672" />
            <wire x2="3088" y1="1008" y2="1008" x1="2672" />
            <wire x2="3088" y1="864" y2="864" x1="3008" />
            <wire x2="3184" y1="864" y2="864" x1="3088" />
            <wire x2="3184" y1="864" y2="880" x1="3184" />
            <wire x2="3088" y1="864" y2="1008" x1="3088" />
        </branch>
        <branch name="Q3N">
            <wire x2="2752" y1="896" y2="896" x1="2672" />
            <wire x2="2672" y1="896" y2="960" x1="2672" />
            <wire x2="3072" y1="960" y2="960" x1="2672" />
            <wire x2="3072" y1="960" y2="1088" x1="3072" />
            <wire x2="3184" y1="1088" y2="1088" x1="3072" />
            <wire x2="3072" y1="1088" y2="1088" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3184" y="880" name="Q3" orien="R0" />
        <iomarker fontsize="28" x="3184" y="1088" name="Q3N" orien="R0" />
        <instance x="464" y="688" name="m4" orien="R0" />
        <instance x="464" y="1328" name="m2" orien="R0" />
        <branch name="X">
            <wire x2="464" y1="560" y2="560" x1="336" />
            <wire x2="336" y1="560" y2="1632" x1="336" />
            <wire x2="848" y1="1632" y2="1632" x1="336" />
            <wire x2="464" y1="1264" y2="1344" x1="464" />
            <wire x2="848" y1="1344" y2="1344" x1="464" />
            <wire x2="848" y1="1344" y2="1520" x1="848" />
            <wire x2="848" y1="1520" y2="1632" x1="848" />
            <wire x2="848" y1="1520" y2="1520" x1="720" />
        </branch>
        <branch name="D">
            <wire x2="464" y1="1552" y2="1552" x1="144" />
        </branch>
        <branch name="Y">
            <wire x2="416" y1="752" y2="832" x1="416" />
            <wire x2="480" y1="832" y2="832" x1="416" />
            <wire x2="784" y1="752" y2="752" x1="416" />
            <wire x2="784" y1="592" y2="592" x1="720" />
            <wire x2="784" y1="592" y2="752" x1="784" />
        </branch>
        <iomarker fontsize="28" x="176" y="1024" name="CLOCK" orien="R180" />
        <branch name="W">
            <wire x2="464" y1="624" y2="624" x1="400" />
            <wire x2="400" y1="624" y2="672" x1="400" />
            <wire x2="816" y1="672" y2="672" x1="400" />
            <wire x2="816" y1="672" y2="816" x1="816" />
            <wire x2="896" y1="816" y2="816" x1="816" />
            <wire x2="896" y1="816" y2="1056" x1="896" />
            <wire x2="1024" y1="816" y2="816" x1="896" />
            <wire x2="816" y1="816" y2="864" x1="816" />
            <wire x2="464" y1="1056" y2="1136" x1="464" />
            <wire x2="896" y1="1056" y2="1056" x1="464" />
            <wire x2="816" y1="864" y2="864" x1="736" />
        </branch>
        <branch name="M">
            <wire x2="976" y1="1008" y2="1056" x1="976" />
            <wire x2="1040" y1="1056" y2="1056" x1="976" />
            <wire x2="1408" y1="1008" y2="1008" x1="976" />
            <wire x2="1408" y1="848" y2="848" x1="1280" />
            <wire x2="1408" y1="848" y2="1008" x1="1408" />
            <wire x2="1552" y1="848" y2="848" x1="1408" />
            <wire x2="1552" y1="848" y2="1520" x1="1552" />
            <wire x2="2128" y1="1520" y2="1520" x1="1552" />
        </branch>
        <branch name="Z">
            <wire x2="400" y1="1392" y2="1488" x1="400" />
            <wire x2="464" y1="1488" y2="1488" x1="400" />
            <wire x2="800" y1="1392" y2="1392" x1="400" />
            <wire x2="800" y1="1200" y2="1200" x1="720" />
            <wire x2="800" y1="1200" y2="1392" x1="800" />
            <wire x2="1040" y1="1120" y2="1120" x1="800" />
            <wire x2="800" y1="1120" y2="1200" x1="800" />
        </branch>
        <branch name="CLOCK">
            <wire x2="224" y1="1024" y2="1024" x1="176" />
            <wire x2="400" y1="1024" y2="1024" x1="224" />
            <wire x2="400" y1="1024" y2="1200" x1="400" />
            <wire x2="464" y1="1200" y2="1200" x1="400" />
            <wire x2="1696" y1="352" y2="352" x1="224" />
            <wire x2="1696" y1="352" y2="992" x1="1696" />
            <wire x2="1968" y1="992" y2="992" x1="1696" />
            <wire x2="1968" y1="992" y2="1168" x1="1968" />
            <wire x2="2112" y1="1168" y2="1168" x1="1968" />
            <wire x2="224" y1="352" y2="1024" x1="224" />
            <wire x2="480" y1="896" y2="896" x1="400" />
            <wire x2="400" y1="896" y2="1024" x1="400" />
            <wire x2="1968" y1="864" y2="992" x1="1968" />
            <wire x2="2112" y1="864" y2="864" x1="1968" />
        </branch>
        <branch name="W1">
            <wire x2="2112" y1="672" y2="672" x1="2048" />
            <wire x2="2048" y1="672" y2="752" x1="2048" />
            <wire x2="2432" y1="752" y2="752" x1="2048" />
            <wire x2="2432" y1="752" y2="832" x1="2432" />
            <wire x2="2432" y1="832" y2="960" x1="2432" />
            <wire x2="2752" y1="832" y2="832" x1="2432" />
            <wire x2="2112" y1="960" y2="1104" x1="2112" />
            <wire x2="2432" y1="960" y2="960" x1="2112" />
            <wire x2="2432" y1="832" y2="832" x1="2368" />
        </branch>
        <instance x="2128" y="1584" name="s1" orien="R0" />
        <branch name="Z1">
            <wire x2="2048" y1="1376" y2="1456" x1="2048" />
            <wire x2="2128" y1="1456" y2="1456" x1="2048" />
            <wire x2="2368" y1="1376" y2="1376" x1="2048" />
            <wire x2="2752" y1="1120" y2="1120" x1="2368" />
            <wire x2="2368" y1="1120" y2="1168" x1="2368" />
            <wire x2="2368" y1="1168" y2="1376" x1="2368" />
        </branch>
        <instance x="2112" y="1296" name="s2" orien="R0" />
        <branch name="X1">
            <wire x2="2096" y1="528" y2="528" x1="1904" />
            <wire x2="2096" y1="528" y2="608" x1="2096" />
            <wire x2="2112" y1="608" y2="608" x1="2096" />
            <wire x2="1904" y1="528" y2="1664" x1="1904" />
            <wire x2="2432" y1="1664" y2="1664" x1="1904" />
            <wire x2="2112" y1="1232" y2="1392" x1="2112" />
            <wire x2="2432" y1="1392" y2="1392" x1="2112" />
            <wire x2="2432" y1="1392" y2="1488" x1="2432" />
            <wire x2="2432" y1="1488" y2="1664" x1="2432" />
            <wire x2="2432" y1="1488" y2="1488" x1="2384" />
        </branch>
        <instance x="1024" y="944" name="m6" orien="R0" />
        <instance x="1040" y="1184" name="m5" orien="R0" />
        <branch name="XLXN_86">
            <wire x2="1024" y1="880" y2="880" x1="1008" />
            <wire x2="1008" y1="880" y2="960" x1="1008" />
            <wire x2="1360" y1="960" y2="960" x1="1008" />
            <wire x2="1360" y1="960" y2="1088" x1="1360" />
            <wire x2="1360" y1="1088" y2="1088" x1="1296" />
        </branch>
        <instance x="2752" y="960" name="s6" orien="R0" />
        <instance x="464" y="1616" name="m1" orien="R0" />
        <iomarker fontsize="28" x="144" y="1552" name="D" orien="R180" />
        <instance x="480" y="960" name="m3" orien="R0" />
    </sheet>
</drawing>