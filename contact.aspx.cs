using System;
using System.Data;
using System.Web.UI;
using AmitmaizusFPV.App_Code; // Add the namespace for the DbHelper class

namespace AmitmaizusFPV.WebPages
{
    public partial class contact : System.Web.UI.Page
    {
        public bool showSignUpForm = true;
        public string msg = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.Count > 0)
            {
                // Retrieve form data
                string firstName = Request.Form["first-name"];
                string lastName = Request.Form["last-Name"];
                string password = Request.Form["password"];
                string phoneNumber = Request.Form["phone-number"];
                string email = Request.Form["email"];
                string subject = Request.Form["subject"];
                string message = Request.Form["message"];
                int feedbackRating = int.Parse(Request.Form["help"] ?? "0");
                string usefulTopic = Request.Form["helpped-most"];
                string additionalInfoTopic = Request.Form["improve"];
                string websiteSatisfaction = Request.Form["website-satisfaction"];
                string admin = "false";
                Session["FirstName"] = firstName;
                Session["LastName"] = lastName;
                Session["PhoneNumber"] = phoneNumber;
                Session["Email"] = email;
                Session["Subject"] = subject;
                Session["Message"] = message;
                Session["FeedbackRating"] = feedbackRating;
                Session["UsefulTopic"] = usefulTopic;
                Session["AdditionalInfoTopic"] = additionalInfoTopic;
                Session["WebsiteSatisfaction"] = websiteSatisfaction;

                // Validate values from the HTML form
                if (string.IsNullOrEmpty(phoneNumber) || phoneNumber.Trim() == "" || string.IsNullOrEmpty(firstName) || firstName.Trim() == "" || string.IsNullOrEmpty(lastName) || lastName.Trim() == "" || string.IsNullOrEmpty(password) || password.Trim() == "" || string.IsNullOrEmpty(phoneNumber) || phoneNumber.Trim() == "" || string.IsNullOrEmpty(email) || email.Trim() == "" || string.IsNullOrEmpty(subject) || subject.Trim() == "" || string.IsNullOrEmpty(message) || message.Trim() == "" || feedbackRating == 0 || additionalInfoTopic.Trim() == "" || string.IsNullOrEmpty(additionalInfoTopic) || string.IsNullOrEmpty(websiteSatisfaction) || websiteSatisfaction.Trim() == "")
                {
                    msg = "Please fill in all the required fields.";
                }
                else
                {
                    int count = 0;
                    for (int i = 0; i < email.Length; i++)
                    {
                        if (email[i] == '@')
                        {
                            count++;
                            break;
                        }

                    }
                    if (count != 1)
                    {
                        msg = "Write a valid email.";
                    }
                    else
                    {
                        if (phoneNumber.Trim().Length != 10)
                        {
                            msg = "Write a valid isreali Phone number.";
                        }
                        else
                        {
                            string[] words = message.Split(new char[] { ' ', '.', ',', ';', '!', '?' });

                            int wordCount = words.Length;

                            if (wordCount < 3)
                            {
                                msg = "Please enter a message with at least three words.";
                            }
                            else
                            {

                                string isphoneNumberExist = "SELECT * FROM contact WHERE Phone_Number=N'" + phoneNumber + "'";
                                DataTable dt = DbHelper.ExecuteSelectQuery(isphoneNumberExist);
                                int numRows = dt.Rows.Count;
                                if (numRows == 1)
                                {
                                    msg = "The phone number you entered is already in use. Please enter a different phone number.";
                                }
                                else if (numRows != 0)
                                {
                                    msg = "An error accured please try again";
                                }
                                else
                                {

                                    usefulTopic = string.IsNullOrWhiteSpace(usefulTopic) ? "" : usefulTopic;
                                    string escapedMessage = message.Replace("'", "''");
                                    // Save form data to the database
                                    string sql = $"INSERT INTO [dbo].[contact] ([First_Name], [Last_Name], [Password], [Phone_Number], [Email], [Subject], [Message], [Feedback_Rating], [useful_Topic], [Additional_Info_Topic], [Website_Satisfaction],[Admin]) VALUES" +
                                    $" (N'{firstName}', N'{lastName}', N'{password}', N'{phoneNumber}', N'{email}', N'{subject}', N'{escapedMessage}', {feedbackRating}, N'{usefulTopic}', N'{additionalInfoTopic}', {websiteSatisfaction}, N'{admin}')";

                                    int rowsAffected = DbHelper.ExecuteNonSelectQuery(sql);

                                    if (rowsAffected > 0)
                                    {
                                        // Successful database insertion
                                        msg = "Form data saved successfully!";
                                        showSignUpForm = false;
                                    }
                                    else
                                    {
                                        // Error occurred while saving to the database
                                        msg = "Error: Failed to save form data.";
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}