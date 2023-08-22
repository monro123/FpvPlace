<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="AmitmaizusFPV.WebPages.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/profile.css" rel="stylesheet" /> 
    <script>
            function showResetForm(event) {
                event.preventDefault(); // Prevent form submission
            document.getElementById('resetFormContainer').style.display = 'block';
        }

            function closeResetForm(event) {
            if (event.target.id === 'resetFormContainer') {
                document.getElementById('resetFormContainer').style.display = 'none';
            }
            }
            function deleteAccount() {
                const confirmationMessage = "By clicking OK, you agree to delete your account.";
                const userConfirmed = confirm(confirmationMessage);

                if (userConfirmed) {
                    window.location.href = "Deleteaccount.aspx";
                } else {
                    // Handle the case when the user cancels the deletion
                    // Example: show a message or perform other actions
                    // showCancelMessage();
                }
            }

            function check() {

                var hasCapitalLetter = false;
                var hasDigit = false;
                var password = document.getElementById('newPassword').value;
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
                
                return true;
            }   // end check
            
        </script>
                       

  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="id">
        <!-- Apply the white border and border-radius to the photo here -->
        <img style="border: 5px solid #fff; border-radius: 50%;" src="../Photos/Default_pfp.svg.png" />
    </div>

    <div class="id">
        <a class="btn"  style="color: blue;" href="Logout.aspx">Log out</a>
    </div>
    <div class="id">
        <a class="btn" style="cursor: pointer;" onclick="showResetForm(event)">Change Password</a>
    </div>
    <div class="id">
        <a class="btn" style="cursor: pointer;" onclick="deleteAccount()">Delete account</a>
    </div>
    <div class="id">
                <h3 ><%= msg %></h3>
    </div>


   <div id="resetFormContainer" class="form-container" onclick="closeResetForm(event)">
        <form id="resetForm" method="post" onsubmit="return check();">
            <!-- The photo is now centered at the top of the form -->
            <img id="photo" src="../Photos/unlock%20(1).png" />
            <div>
                <label for="oldPassword">Old Password:</label>
                <input name="oldPassword" type="password" id="oldPassword" required>
            </div>
            <div>
                <label for="newPassword">New Password:</label>
                <input name="newPassword" type="password" id="newPassword" required>
            </div>
            <div class="center">
                <input type="submit" name="submit" value="Submit" class="btn" />
              <input type="button" class="btn" value="Close" onclick="document.getElementById('resetFormContainer').style.display = 'none';" />

                <h3><%= msg %></h3>
            </div>
        </form>
    </div>
</asp:Content>
