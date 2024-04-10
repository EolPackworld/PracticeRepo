<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="packbillproject.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="images/logo-icon.png" rel="shortcut icon" type="image/png" />
    <title>PackBill</title>
    <link href="css/app.css?v=666" rel="stylesheet" type="text/css" />
    <meta property="og:title" content="Industrial Automation" />
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="packbill.com"/>
    <meta property="og:site_name" content="Manufacturer"/>
    <meta name="twitter:card" content="summary"/>
    <meta name="twitter:site" content="Manufacturer" />
    <script>let _;</script>
    <meta name="description" content="PackBill | Sign-in with your login-credentials."/>

    <style>
    .login-wrap {
        display: block;
        position: relative; 
        width: 400px;
        min-width: 350px;
        max-width: 100%;
        height: auto;
        margin: 30px auto;
        padding: 90px 20px 20px 20px;
        box-shadow: 1px 1px 10px rgba(0,0,0,0.2);
        box-sizing: border-box;
        background-color: rgb(245,245,245);
        transition: all linear .29s;
        overflow: auto;
    }

        .login-wrap::before {
            position: absolute;
            top: 0;
            left: 0;
            content: '';
            display: block;
            width: 100%;
            height: 90px;
            background: url(images/login-sm.png) no-repeat center top 10px rgba(97,167,183,.24);
            background-size: 70px;
        }

        .login-wrap input[type=text],
        .login-wrap input[type=password] {
            padding: 7px 10px;
        }

        .login-wrap img {
            display: block;
            margin: 0 auto;
        }
</style>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="body-wrap">        
            <nav class="nav-top" role="navigation">
                <a href="https://eolpackworld.com" target="_blank" class="ico-logo">
                    <img src="images/logoa.png" id="milogoa"/><img src="images/logob.png" id="milogob"/>
                </a>
                <div>
                    <a id="maUName" tabindex="0"><i class="ico-uname"></i>Sign In</a>
                </div>       

            </nav>       
            <div class="pg-wrap" style="margin-top: 8rem;">
                <div class="nav-main-wrap">

                </div>
                <div id="mdPgCnt" class="pg-cntt-wrap">
                    <div class="login-wrap ani-appr def-in dly1">
                        <h2 style="text-align:center;padding:10px;">User Login</h2>
                        <div class="eg-wrap lab-w200 xx-12" style="padding:30px;">
                            <div>
                                <asp:TextBox runat="server"  ID="TUID" placeholder="- User-id -" ></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox runat="server" TextMode="Password" ID="TPW" placeholder="- Password -" ></asp:TextBox>
                            </div>
                        </div>
                        <div class="f-bt-h-w">
                            <asp:Button ID="button_click" runat="server" OnClick="insert_btn" class="bti-sb" Text="Submit"  />
                        </div>  
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </div>
                </div>

            </div>

        </div>
    </form>
</body>
</html>  
