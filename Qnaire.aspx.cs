using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AmitmaizusFPV.App_Code;

namespace AmitmaizusFPV.WebPages
{
    public partial class Qnaire : System.Web.UI.Page
    {
        public int highestScore = 0;
        public int count = 0;
        public int countcheck = 0;
        public string msg = "";
        public string ms = "";
        public string[] check = { "First Person View", "Fast and Precise Vehicle", "Flight Performance Verification", "Full Power Voltage", "a", "b", "c", "speed", "maneuverability", "freestyle", "all", "big", "racing", "cinematic", "micro", "5.8 hz", "2.4 hz", "5.3 hz", "ImpulseRC", "DriverDrone", "DroneDrive", "FixRc", "155", "175", "185", "145", "00", "10-15", "20-25", "10-15", "45", "Open fields", "Indoor environments", "Urban environments", "Wooded areas", "1943", "1942", "1941", "1940" };
        public string[] answers = new string[10];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["isSigned"])
            {
                msg = "you are not belong here";

            }
            else
            {
                highestScore = (int)Application["maxScore"];

                string fpv = Request.QueryString["fpv"];
                string q2a = Request.QueryString["q2"];
                string enjoyment = Request.QueryString["enjoyment"];
                string droneType = Request.QueryString["drone_type"];
                string frequency = Request.QueryString["frequency"];
                string satisfaction = Request.QueryString["satisfaction"];
                string experienceLevel = Request.QueryString["experience_level"];
                string skill = Request.QueryString["skill"];
                string cameraAngle = Request.QueryString["camera_angle"];
                string preferredEnvironment = Request.QueryString["preferred_environment"];
                Session["fpv"] = fpv;
                Session["q2a"] = q2a;
                Session["enjoyment"] = enjoyment;
                Session["droneType"] = droneType;
                Session["frequency"] = frequency;
                Session["satisfaction"] = satisfaction;
                Session["experienceLevel"] = experienceLevel;
                Session["skill"] = skill;
                Session["cameraAngle"] = cameraAngle;
                Session["preferredEnvironment"] = preferredEnvironment;

                answers[0] = fpv;
                answers[1] = q2a;
                answers[2] = enjoyment;
                answers[3] = droneType;
                answers[4] = frequency;
                answers[5] = satisfaction;
                answers[6] = experienceLevel;
                answers[7] = skill;
                answers[8] = cameraAngle;
                answers[9] = preferredEnvironment;

                if (string.IsNullOrEmpty(fpv) || string.IsNullOrEmpty(q2a) || string.IsNullOrEmpty(enjoyment) || string.IsNullOrEmpty(droneType) || string.IsNullOrEmpty(frequency) || string.IsNullOrEmpty(satisfaction) || string.IsNullOrEmpty(experienceLevel) || string.IsNullOrEmpty(skill) || string.IsNullOrEmpty(cameraAngle) || string.IsNullOrEmpty(preferredEnvironment))
                {
                    msg = "Please fill in all the required fields.";
                }
                else
                {
                    for (int i = 0; i < answers.Length; i++)
                    {
                        for (int j = 0; j < check.Length; j++)
                        {
                            if (answers[i].Equals(check[j]))
                            {
                                countcheck++;
                                j = 0;
                                break;

                            }
                        }
                    }

                    if (countcheck != 10)
                    {
                        msg = "Fill in only legal answers.";
                    }
                    else
                    {
                        ms = "<style>h3{color: crimson;}</style>";
                        if (fpv.Equals("First Person View"))
                        {
                            count++;
                        }
                        if (q2a == "b")
                        {
                            count++;
                        }

                        if (enjoyment.Equals("freestyle"))
                        {
                            count++;
                        }

                        if (droneType.Equals("micro"))
                        {
                            count++;
                        }

                        if (frequency.Equals("5.8 hz"))
                        {
                            count++;
                        }
                        if (satisfaction.Equals("ImpulseRC"))
                        {
                            count++;
                        }
                        if (experienceLevel.Equals("1943"))
                        {
                            count++;
                        }
                        if (skill.Equals("155"))
                        {
                            count++;
                        }
                        if (cameraAngle.Equals("20-25"))
                        {
                            count++;
                        }
                        if (preferredEnvironment.Equals("Open fields"))
                        {
                            count++;
                        }
                        if (count * 10 > highestScore && count * 10 != 100)
                        {
                            msg = " You have scored the highest score " + (count * 10) + " congratulations! ";

                            Application["maxScore"] = count * 10;
                        }

                        else
                        {
                            if (count == 10)
                            {
                                msg = "Well done! You have scored " + count * 10 + " .";
                            }

                            else
                            {
                                msg = "Try again. You have scored " + count * 10 + ".";
                            }


                        }
                    }

                }
            }
        }
    }
}