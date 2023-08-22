<%@ Page Title="Register" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="AmitmaizusFPV.WebPages.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Reem+Kufi&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../Style/contact.css">
    <script type="text/javascript">
        function check() {

            var hasCapitalLetter = false;
            var hasDigit = false;
            var password = document.getElementById('password').value;
            for (var i = 0; i < password.length; i++) {
                if (password.charAt(i) >= 'A' && password.charAt(i) <= 'Z') {
                    hasCapitalLetter = true;
                }
                if (password.charAt(i) >= '0' && password.charAt(i) <= '9') {
                    hasDigit = true;
                }
                if (hasCapitalLetter && hasDigit) {
                    break;
                }
            } // for
            if (!hasCapitalLetter) {
                alert("Password must contain at least one capital letter");
                return false;
            }
            if (!hasDigit) {
                alert("Password must contain at least one digit (0-9)");
                return false;
            }
            var satisfaction = document.getElementById('website-satisfaction').value;
            if (satisfaction == '5' || satisfaction == '4') {
                alert("Thank you for the high score in the satisfaction of our website!");
            }
            return true;
        }   // end check
    </script>
    <style type="text/css">
        .auto-style1 {
            width: auto;
            position: relative;
            box-sizing: border-box;
            height: auto;
            min-height: 80vh;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            align-items: center;
            grid-gap: 6rem;
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="after"><%= msg %></h1>
    <section class="auto-style1">
        <% if (showSignUpForm == true)
            { %>

        <div class="content-form">
            <h1>Register</h1>
            <p>
                Got a question, suggestion, or just want to chat?
                <br />
                Don't hesitate to reach out!
            </p>
            <form action="contact.aspx" method="post" onsubmit="return check();">
                <div class="short">
                    <input class="first" type="text" id="first-name" name="first-name" placeholder="First Name" required="required" value="<%= Session["FirstName"] ?? "" %>">
                    <input class="second" placeholder="Last Name" type="text" id="last-name" name="last-name" required="required" value="<%= Session["LastName"] ?? "" %>">
                </div>
                <div class="short">
                    <input class="first" type="password" id="password" name="password" placeholder="Password" required="required">
                    <input class="second" placeholder="Phone number" type="tel" id="phone-number" name="phone-number" required="required" value="<%= Session["PhoneNumber"] ?? "" %>">
                </div>
                <input type="email" id="email" name="email" placeholder="Email" required="required" value="<%= Session["Email"] ?? "" %>">
                <input type="text" placeholder="Write a subject" id="subject" name="subject" required="required" value="<%= Session["Subject"] ?? "" %>">
                <textarea name="message" id="message" cols="30" rows="10" placeholder="I am listening" required="required"><%= Session["Message"] ?? "" %></textarea>
                <div class="feedback">
                    <details style="border-bottom: 2px solid white;">
                        <summary style="border-bottom: 2px;">Feedback on F&Q page</summary>
                        <label for="quantity">Rate the helpfulness of the answers from 1-5</label>
                        <input type="number" id="help" name="help" min="1" max="5" required="required" value="<%= Session["FeedbackRating"] ?? "" %>">
                        <br />
                        <label for="help-options">Which topic provided the most useful information for you?</label><br />
                        <input type="radio" id="Starting out" name="helpped-most" value="Starting-out" <%= (Session["UsefulTopic"] != null && Session["UsefulTopic"].ToString() == "Starting-out") ? "checked" : "" %>>
                        <label for="Starting-out">Starting out</label><br>
                        <input type="radio" id="css" name="helpped-most" value="Building" <%= Session["UsefulTopic"] != null && Session["UsefulTopic"].ToString() == "Building" ? "checked" : "" %>>
                        <label for="Building">Building</label>
                        <input type="radio" id="Betaflight" name="helpped-most" value="Betaflight" <%= Session["UsefulTopic"] != null && Session["UsefulTopic"].ToString() == "Betaflight" ? "checked" : "" %>>
                        <label for="Betaflight">Betaflight</label>
                        <br />
                        <label for="improve">Which topic would you like more info on?</label><br />
                        <input required type="checkbox" id="Starting out-op" name="improve" value="Starting-out" <%= (Session["AdditionalInfoTopic"] != null && Session["AdditionalInfoTopic"].ToString().Contains("Starting-out")) ? "checked" : "" %>>
                        <label for="Starting-out">Starting out</label><br>
                        <input required type="checkbox" id="css-op" name="improve" value="Building" <%= (Session["AdditionalInfoTopic"] != null && Session["AdditionalInfoTopic"].ToString().Contains("Building")) ? "checked" : "" %>>
                        <label for="Building">Building</label><br>
                        <input required type="checkbox" id="Betaflight-op" name="improve" value="Betaflight" <%=  (Session["AdditionalInfoTopic"] != null && Session["AdditionalInfoTopic"].ToString().Contains("Betaflight")) ? "checked" : "" %>>
                        <label for="Betaflight" >Betaflight</label>

                        <br />
                        <label for="website-satisfaction">How satisfied are you with our website?</label>
                        <select id="website-satisfaction" name="website-satisfaction" required>
                            <option value="1" <%=  Session["WebsiteSatisfaction"] != null && Session["WebsiteSatisfaction"].ToString() == "1" ? "selected" : "" %>>Not at all - I couldn't find anything!</option>
                            <option value="2" <%= Session["WebsiteSatisfaction"] != null && Session["WebsiteSatisfaction"].ToString() == "2" ? "selected" : "" %>>Meh - It's just okay, needs some work</option>
                            <option value="3" <%= Session["WebsiteSatisfaction"] != null && Session["WebsiteSatisfaction"].ToString() == "3" ? "selected" : "" %>>It's pretty good - I found what I needed</option>
                            <option value="4" <%= Session["WebsiteSatisfaction"] != null && Session["WebsiteSatisfaction"].ToString() == "4" ? "selected" : "" %>>I loved it - It's easy to use and looks great</option>
                            <option value="5" <%= Session["WebsiteSatisfaction"] != null &&Session["WebsiteSatisfaction"].ToString() == "5" ? "selected" : "" %>>It's amazing - I could browse all day!</option>
                        </select>
                    </details>
                </div>
                <input type="submit" name="submit" value="Submit" class="btn" />
            </form>
        </div>
        <% } %>
        <div class="me">
            <img src="../Photos/mebest.jpg" />
        </div>
        <script>
            if ("<%= msg %>" === "Form data saved successfully!") {
                setTimeout(function () {
                    window.location.href = "Login.aspx";
                }, 3000); // 3 seconds delay
            }
        </script>

    </section>

</asp:Content>
