<%@ Page Title="F&Q" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="FandQ.aspx.cs" Inherits="AmitmaizusFPV.WebPages.FandQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Reem+Kufi&display=swap" rel="stylesheet">
    <style>
        .devide{
            display:grid;
            grid-template-columns:repeat(3,1fr);
        }
        h1,p,summary{
            font-family: 'Reem Kufi', sans-serif;
        }
        .qanda{
            color:white;
            padding: 0.5% 5%;
            font-family: 'Reem Kufi', sans-serif !important; 

        }
        
       summary,details{
           border-top: 0.5px solid white;
           cursor:pointer;

       }
       
        summary,li{
            font-size:18px;
        }
        .tools{
            font-size:20px;
        }
        #bold{
            font-size:20px;
        }
        .p{
            font-size:18px;

        }
       
        
        
        


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="devide">
    <div class="qanda">
        <h1 style="color:#87cc52;">Starting out</h1>
        <details>
            <summary>How much does it cost to start with FPV?</summary>
            <ul>
                <li><p>$70-$100 - For this price you can get a hobby-grade radio, that will give you a much more realistic feel when flying in a simulator, and can be used if/when you decide to get a quad</p></li>
                <li><p>$300-400 - Cheapest you can reasonably get flying for real. This will get you a whoop to fly indoors, a proper radio, and some budget goggles to start off</p></li>
                <li><p>$1000+ - About the most you can reasonably spend. DJI FPV, and high end radio equipment</p></li>
            </ul>
        </details>
        <details>
            <summary>What's a good simolator?</summary>
            <ul>
                <li><p>Velocidrone - Best realistic physics and most used (PC, $20)</p></li>
                <li><p>Liftoff - Decent physics, supports Steam workshop and has decent graphics (PC and Console, $20)</p></li>
                <li><p>Uncrashed - Great graphics, ok physics (PC, $13)</p></li>
                <li><p>DCL - An "official" sim for the Drone Champions League ($30, PC and Console)</p></li>
                <li><p>Orqa FPV.SkyDive - Likely the best free sim out there, with decent graphics and physics for the price (PC, Free)</p></li>
            </ul>
        </details>
        <details>
            <summary>What are the different flight modes?</summary>
            <ul>
                <li><p>Angle - The radio stick position changes the angle of the quad, so a full stick forward on pitch will tilt the quad, say, 30 degrees forwards, and not more. When the stick is returned to center, the quad should too</p></li>
                <li><p>Horizon - Acts like angle mode, but after a certain stick threshold, it will switch to acro, and when bought back, it will switch back to how angle mode works, allowing flips</p></li>
                <li><p>Acro - The stick position dictates how fast the quad will spin at that axis. This can be changed with rates, changing how fast it will spin at a set point of the stick travel. Only active when no other flight mode is set</p></li>
                <li><p>Acro Trainer - Functionally the same as acro, but won't tilt further than set, basically the best of both angle and acro</p></li>
            </ul>
        </details>
    </div>
    <div class="qanda">
        <h1 style="color:#d6395b;">Building</h1>
        <details>
            <summary>What tools do I need?</summary>
            <h1 class="tools">Assembly:</h1>
            <ul>
                <li><p>1.5, 2, and 2.5mm HEX drivers should be all you need for M2/M3 screws that are most commonly used on most builds</p></li>
                <li><p>A prop tool, socket wrench or a socket ratchet with an M5 bit for prop nuts</p></li>
                <li><p>Tweezers or forceps, to hold small nuts/washers, or to hold wires when soldering. Speaking of...</p></li>
            </ul>
            <h1 class="tools">Soldering:</h1>
            <ul>
                <li><p>Obviously a soldering iron</p></li>
                <li><p>Flux. Flux comes in a wide variety of application forms.</p></li>
                <li><p>Solder, or tin. Usually 60/40 (63/37) tin-lead mix. Ideally rosin core, ~0.8mm thick</p></li>
                <li><p>Heatshrink and a lighter to insulate any wire connections</p></li>
            </ul>

        </details>
        <details>
            <summary>What quad should I get?</summary>
            <ul>
                <li><p>If you just want to fly indoors safely when learning, a 65mm or 75mm tinywhoop is likely the best option while also being the cheapest</p></li>
                <li><p>For general freestyle/race flying with a full GoPro, a 5" is the best all-round size with the most available components and guides.</p></li>
                <li><p>If don't need a full-size GoPro and use a smaller/lighter HD cam, or record DVR for footage sharing, you can go down to 3-4". good for both freestyle and non-spec racing while also being cheaper and easier to fly in more places.</p></li>
                <li><p>For long flight time with a full GoPro, get a 7" LR quad. They can carry stupid big batteries, or go lighter to maintain high speeds, or carry a larger camera depending on your need</p></li>
                
            </ul>
        </details>
        <details>
            <summary>How to choose the correct battery?</summary>
                <p class="p">There are a few recommended manufacturers, like CNHL, GNB</p>
                <p class="p" >For quads, they all have their pros and cons. CNHL are good performing and cheap, but at times heavier. GNB are likely the best performing batts without sacrificing durability, Tattu make a wide range of batteries</p>
        </details>
    </div>
    <div class="qanda">
        <h1 style="color:#5AD8E6";>Betaflight</h1>
        <details>
            <summary>I can't connect to Betaflight, what should I do?</summary>
            <ul>
                <li><p>Make sure that you have a data cable. Some USB cables only carry power</p></li>
                <li><p>Make sure that the wire is fully functional. Often the cheaper cables snap internally, only allowing a flaky connection at best</p></li>
                <li><p>As for the PC side: If your PC doesn't even recognize that the FC is plugged in with a sound indication, try a different USB port</p></li>
                <li><p>If that didn't work, you can try the ImpulseRC Driver Fixer tool to install all the needed drivers</p></li>
                <li><p></p></li>
            </ul>
        </details>
        <details>
            <summary>The quad flips and shuts off when trying to take off</summary>
            <ul>
                <li><p>Make sure your motors are spinning in the correct direction. You can reverse them in Betaflight, or in BlHeli Suite/Configurator</p></li>
                <li><p>This extends into props in/out. This basically means that Betaflight expects the motors and props to spin in one way. Make sure it is in the right way. </p></li>
                <li><p>Make sure the gyroscope is correctly aligned. This can easily be checked by moving the quad around, and seeing if every rotation responds correctly in the Betaflight model preview</p></li>
                <li><p>Make sure that your radio channels are mapped correctly. If not, it can cause unexpected behavior</p></li>
                
            </ul>
        </details>
        <details>
            <summary>My motors won't slow down after applying throttle</summary>
            <p class="p" style="border-bottom:30px">This is normal, and it's called I Term Windup. Basically, the quad wants to have control over its movement at all times. When it can't move, it'll spin up the motors more and more to try to move. This is most often caused by the props not being on, so once you put them on correctly it will likely work as expected</p>
        </details>
    </div >
            <section />

</asp:Content>
