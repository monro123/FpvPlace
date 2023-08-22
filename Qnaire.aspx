<%@ Page Title="Qnaire" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Qnaire.aspx.cs" Inherits="AmitmaizusFPV.WebPages.Qnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/Qnaire.css" rel="stylesheet" />
    
      <%=ms%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form action="Qnaire.aspx" method="get">
        <% if (Request.QueryString.Count > 0 || Session["isSigned"] == null || (bool)Session["isSigned"] == false)
            { %>
        <h2 id="masgge"><span class="red">*</span><%=msg%><span class="red">*</span></h2>
        <% } %>
        <script>
            if ("<%= msg %>" === "you are not belong here") {
                setTimeout(function () {
                    window.location.href = "FPVhouse.aspx";
                }, 3000); // 3 seconds delay
            }
        </script>
        <% if ((bool)Session["isSigned"] == true)
            { %>
        <h3 <% if (Session["fpv"] != null && Session["fpv"].ToString() == "First Person View")
            { %>
            style="color: lawngreen;" <% } %>>What is FPV?</h3>

        <input required <%= (Session["fpv"] != null && Session["fpv"].ToString() == "First Person View") ? "checked" : "" %> type="radio" id="answer1" name="fpv" value="First Person View">
        <label for="answer1">First Person View</label><br>

        <input required <%= (Session["fpv"] != null && Session["fpv"].ToString() == "Fast and Precise Vehicle") ? "checked" : "" %> type="radio" id="answer2" name="fpv" value="Fast and Precise Vehicle">
        <label for="answer2">Fast and Precise Vehicle</label><br>

        <input  required <%= (Session["fpv"] != null && Session["fpv"].ToString() == "Flight Performance Verification") ? "checked" : "" %> type="radio" id="answer3" name="fpv" value="Flight Performance Verification">
        <label for="answer3">Flight Performance Verification</label><br>

        <input required  <%= (Session["fpv"] != null && Session["fpv"].ToString() == "Full Power Voltage") ? "checked" : "" %> type="radio" id="answer4" name="fpv" value="Full Power Voltage">
        <label for="answer4">Full Power Voltage</label><br>
        <br>


        <h3 <% if (Session["q2a"] != null && Session["q2a"].ToString() == "b")
            { %>
            style="color: lawngreen" <% }
            %>>What is the main difference between a FPV drone and a traditional drone?</h3>
        <input required  <%= (Session["q2a"] != null && Session["q2a"].ToString() == "a") ? "checked" : "" %> type="radio" id="1" name="q2" value="a">
        <label for="q2a">FPV drones have live video feed to the pilot</label><br>
        <input  required <%= (Session["q2a"] != null && Session["q2a"].ToString() == "b") ? "checked" : "" %> type="radio" id="2" name="q2" value="b">
        <label for="q2b">FPV drones are faster than Traditional drones</label><br>
        <input required  <%= (Session["q2a"] != null && Session["q2a"].ToString() == "c") ? "checked" : "" %> type="radio" id="3" name="q2" value="c">
        <label for="q2c">FPV drones are always controlled by a remote pilot, while traditional drones can be autonomous</label><br>
        <br>

        <h3 <% if (Session["enjoyment"] != null && Session["enjoyment"].ToString() == "freestyle")
            { %>
            style="color: lawngreen;" <% } %>>What is the highest speed of FPV drone?</h3>
        <label for="option1">
            <input required  type="radio" id="option1" name="enjoyment" value="speed" <%= (Session["enjoyment"] != null && Session["enjoyment"].ToString() == "speed") ? "checked" : "" %>>
            360 km/h
        </label>
        <br>
        <label for="option2">
            <input  required type="radio" id="option2" name="enjoyment" value="maneuverability" <%= (Session["enjoyment"] != null && Session["enjoyment"].ToString() == "maneuverability") ? "checked" : "" %>>
            322 km/h
        </label>
        <br>
        <label for="option3">
            <input  required type="radio" id="option3" name="enjoyment" value="freestyle" <%= (Session["enjoyment"] != null && Session["enjoyment"].ToString() == "freestyle") ? "checked" : "" %>>
            414 km/h
        </label>
        <br>
        <label for="option4">
            <input required  type="radio" id="option4" name="enjoyment" value="all" <%= (Session["enjoyment"] != null && Session["enjoyment"].ToString() == "all") ? "checked" : "" %>>
            312 km/h
        </label>
        <br>
        <br>


        <h3 <% if (Session["droneType"] != null && Session["droneType"].ToString() == "micro")
            { %>
            style="color: lawngreen;" <% } %>>What is the best drone for indoor flying?
        </h3>
        <select name="drone_type">
            <option required="required"  value="big" <%= (Session["droneType"] != null && Session["droneType"].ToString() == "big") ? "selected" : "" %>>5"</option>
            <option required="required" value="racing" <%= (Session["droneType"] != null && Session["droneType"].ToString() == "racing") ? "selected" : "" %>>7"</option>
            <option required="required" value="cinematic" <%= (Session["droneType"] != null && Session["droneType"].ToString() == "cinematic") ? "selected" : "" %>>8"</option>
            <option required="required" value="micro" <%= (Session["droneType"] != null && Session["droneType"].ToString() == "micro") ? "selected" : "" %>>3"</option>
        </select><br>
        <br>



        <h3 <% if (Session["frequency"] != null && Session["frequency"].ToString() == "5.8 hz")
            { %>
            style="color: lawngreen;" <% } %>>Which frequency is forbidden to use without a license in Israel</h3>
        <label for="option5">
            <input required type="radio" id="option5" name="frequency" value="5.8 hz" <%= (Session["frequency"] != null && Session["frequency"].ToString() == "5.8 hz") ? "checked" : "" %>>
            5.8 hz
        </label>
        <br>
        <label for="option6">
            <input  required type="radio" id="option6" name="frequency" value="2.4 hz" <%= (Session["frequency"] != null && Session["frequency"].ToString() == "2.4 hz") ? "checked" : "" %>>
            2.4 hz
        </label>
        <br>
        <label for="option7">
            <input  required type="radio" id="option7" name="frequency" value="5.3 hz" <%= (Session["frequency"] != null && Session["frequency"].ToString() == "5.3 hz") ? "checked" : "" %>>
            5.3 hz
        </label>
        <br />
        <br />



        <h3 <% if (Session["satisfaction"] != null && Session["satisfaction"].ToString() == "ImpulseRC")
            { %>
            style="color: lawngreen;" <% } %>>What is the most known application to fix your drone driver?</h3>
        <label>
            <input required  type="radio" name="satisfaction" value="ImpulseRC" <%= (Session["satisfaction"] != null && Session["satisfaction"].ToString() == "ImpulseRC") ? "checked" : "" %>>
            ImpulseRC
        </label>
        <label>
            <input  required type="radio" name="satisfaction" value="DriverDrone" <%= (Session["satisfaction"] != null && Session["satisfaction"].ToString() == "DriverDrone") ? "checked" : "" %>>
            DriverDrone
        </label>
        <label>
            <input required  type="radio" name="satisfaction" value="DroneDrive" <%= (Session["satisfaction"] != null && Session["satisfaction"].ToString() == "DroneDrive") ? "checked" : "" %>>
            DroneDrive
        </label>
        <label>
            <input  required type="radio" name="satisfaction" value="FixRc" <%= (Session["satisfaction"] != null && Session["satisfaction"].ToString() == "FixRc") ? "checked" : "" %>>
            FixRc
        </label>
        <br />
        <br />


        <h3 <% if (Session["experienceLevel"] != null && Session["experienceLevel"].ToString() == "1943")
            { %>
            style="color: lawngreen;" <% } %>>When was the beginning of FPV drone?</h3>
        <label>
            <input  required type="radio" name="experience_level" value="1940" <%= (Session["experienceLevel"] != null && Session["experienceLevel"].ToString() == "1940") ? "checked" : "" %>>
            1940
        </label>
        <label>
            <input  required type="radio" name="experience_level" value="1943" <%= (Session["experienceLevel"] != null && Session["experienceLevel"].ToString() == "1943") ? "checked" : "" %>>
            1943
        </label>
        <label>
            <input  required type="radio" name="experience_level" value="1941" <%= (Session["experienceLevel"] != null && Session["experienceLevel"].ToString() == "1941") ? "checked" : "" %>>
            1941
        </label>
        <label>
            <input  required type="radio" name="experience_level" value="1942" <%= (Session["experienceLevel"] != null && Session["experienceLevel"].ToString() == "1942") ? "checked" : "" %>>
            1942
        </label>
        <br />
        <br />



        <h3 <% if (Session["skill"] != null && Session["skill"].ToString() == "155")
            { %> style="color: lawngreen;" <% } %>>
            What is Mr. Steele's net worth?</h3>
            <select name="skill">
                <option value="155" <%= (Session["skill"] != null && Session["skill"].ToString() == "155") ? "selected" : "" %>>$155.62 thousand</option>
                <option value="185" <%= (Session["skill"] != null && Session["skill"].ToString() == "185") ? "selected" : "" %>>$185.62 thousand</option>
                <option value="175" <%= (Session["skill"] != null && Session["skill"].ToString() == "175") ? "selected" : "" %>>$$175.62 thousand</option>
                <option value="145" <%= (Session["skill"] != null && Session["skill"].ToString() == "145") ? "selected" : "" %>>$145.62 thousand</option>
            </select><br>
            <br>

            <h3 <% if (Session["cameraAngle"] != null && Session["cameraAngle"].ToString() == "20-25" )
                { %> style="color: lawngreen;" <% } %>>What is the recommended angle for freestyle flying?</h3>
            <label>
                <input required  type="radio" name="camera_angle" value="00" <%= (Session["cameraAngle"] != null && Session["cameraAngle"].ToString() == "00") ? "checked" : "" %>>
                0 degrees (straight forward)
            </label>
            <label>
                <input  required type="radio" name="camera_angle" value="10-15" <%= (Session["cameraAngle"] != null && Session["cameraAngle"].ToString() == "10-15") ? "checked" : "" %>>
                10-15 degrees (slight upward angle)
            </label>
            <label>
                <input required  type="radio" name="camera_angle" value="20-25" <%= (Session["cameraAngle"] != null && Session["cameraAngle"].ToString() == "20-25") ? "checked" : "" %>>
                &nbsp20-30 degrees (moderate upward angle)
            </label>
            <label>
                <input  required type="radio" name="camera_angle" value="45" <%= (Session["cameraAngle"] != null && Session["cameraAngle"].ToString() == "45") ? "checked" : "" %>>
                &nbsp45 degrees (aggressive upward angle)
            </label>
            <br />
            <br />


            <h3 <% if (Session["preferredEnvironment"] != null && Session["preferredEnvironment"].ToString() == "Open fields" )
                { %>
                style="color: lawngreen;" <% } %>>
                What type of environment is the best to learn flying FPV drone?</h3>
                        <label for="environment1">
                            <input required  type="radio" id="environment1" name="preferred_environment" value="Open fields" <%= (Session["preferredEnvironment"] != null && Session["preferredEnvironment"].ToString() == "Open fields") ? "checked" : "" %>>
                            Open fields
                        </label>
                <br>
                <label for="environment2">
                    <input required  type="radio" id="environment2" name="preferred_environment" value="Wooded areas" <%= (Session["preferredEnvironment"] != null && Session["preferredEnvironment"].ToString() == "Wooded areas") ? "checked" : "" %>>
                    Wooded areas
                </label>
                <br>
                <label for="environment3">
                    <input required  type="radio" id="environment3" name="preferred_environment" value="Urban environments" <%= (Session["preferredEnvironment"] != null && Session["preferredEnvironment"].ToString() == "Urban environments") ? "checked" : "" %>>
                    Urban environments
                </label>
                <br>
                <label for="environment4">
                    <input  required type="radio" id="environment4" name="preferred_environment" value="Indoor environments" <%= (Session["preferredEnvironment"] != null && Session["preferredEnvironment"].ToString() == "Indoor environments") ? "checked" : "" %>>
                    Indoor environments
                </label>
                <br>





                <div>
                    <input class="btn" type="reset" value="Reset">

                    <br>
                    <input class="btn" type="submit" value="Submit answers">
                </div>
    </form>
    <%}%>
</asp:Content>

