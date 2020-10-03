<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">

    <!--====== Title ======-->
    <title>PetHelper </title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png">

    <!--====== Slick CSS ======-->
    <link rel="stylesheet" href="assets/css/slick.css">

    <!--====== Font Awesome CSS ======-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">

    <!--====== Line Icons CSS ======-->
    <link rel="stylesheet" href="assets/css/LineIcons.css">

    <!--====== Animate CSS ======-->
    <link rel="stylesheet" href="assets/css/animate.css">

    <!--====== Magnific Popup CSS ======-->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">

    <!--====== Bootstrap CSS ======-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!--====== Default CSS ======-->
    <link rel="stylesheet" href="assets/css/default.css">

    <!--====== Style CSS ======-->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="Content/Site.css">

</head>

<body>
    <!--====== PRELOADER PART START ======-->

    <div class="preloader">
        <div class="loader">
            <div class="ytp-spinner">
                <div class="ytp-spinner-container">
                    <div class="ytp-spinner-rotator">
                        <div class="ytp-spinner-left">
                            <div class="ytp-spinner-circle"></div>
                        </div>
                        <div class="ytp-spinner-right">
                            <div class="ytp-spinner-circle"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--====== PRELOADER PART ENDS ======-->
    <!--====== HEADER PART START ======-->

    <header>
        <div class="navbar-area headroom">
            <div style="background-image: url(assets/images/header-form.jpg)">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand" href="index.html">
                                <img src="assets/images/logo.png" alt="Logo">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                <ul id="nav" class="navbar-nav m-auto">
                                    <li class="nav-item active">
                                        <a href="index.html">Главная</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="index.html#about">О нас </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="index.html#testimonial">Случаи людей</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="index.html#blog">Новости</a>
                                    </li>
                                </ul>
                            </div> <!-- navbar collapse -->
                        </nav> <!-- navbar -->
                        </div>
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div> <!-- navbar area -->
        
</head>
      <br />
      <br />
      <br />
      <br />
<body>
    <form id="form1" runat="server">
        <div class="f1">
            <p class="text wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">Eсли вы сейчас находитесь на месте совершения преступленияправонарушения то сначала сообщите в полицию по телефону 112 и дождитесь наряда на место.<br> Предварительно сохранив все вещественные доказательства в исходном виде, <br>если животному необходимо оказать неотложную вет.помощь вовлеките еще очевидцев, <br>которые смогут остаться на месте происшествия или наоборот сопроводить животное для оказания помощи в вет.клинике.</p>
            <br />
            Укажите,что случилось:<asp:DropDownList ID="DropDownList9" runat="server"  DataSourceID="SqlDataSource1" DataTextField="sl" DataValueField="sl">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString2 %>" SelectCommand="SELECT * FROM [Sluchai] ORDER BY [id]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Как пострадало животное?"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server"  DataSourceID="SqlDataSource2" DataTextField="damage" DataValueField="damage">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString2 %>" SelectCommand="SELECT * FROM [Damage] ORDER BY [id]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Укажите вид оружия:"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="weapon" DataValueField="weapon">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString2 %>" SelectCommand="SELECT * FROM [Weapon] ORDER BY [id]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Произошло ли это в черте города?"></asp:Label>
            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="spacecity" DataValueField="spacecity">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString2 %>" SelectCommand="SELECT * FROM [SpaceCity] ORDER BY [id]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Свидетелями ситуации были дети?"></asp:Label>
            <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="svideteli" DataValueField="svideteli">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString2 %>" SelectCommand="SELECT * FROM [Svideteli] ORDER BY [id]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Было ли это породистое животное с документами?"></asp:Label>
            <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource6" DataTextField="document" DataValueField="document">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString2 %>" SelectCommand="SELECT * FROM [Document] ORDER BY [id]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Было ли это домашнее животное?"></asp:Label>
            <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource7" DataTextField="domestic" DataValueField="domestic">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString2 %>" SelectCommand="SELECT * FROM [Domestic] ORDER BY [id]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Выберите свой регион:"></asp:Label>
            <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource8" DataTextField="region" DataValueField="region">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString2 %>" SelectCommand="SELECT * FROM [Region] ORDER BY [id]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Опишите ситуацию своими словами:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" TextMode="MultiLine" runat="server" CssClass="col-md-7" Height="200px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Ваше ФИО:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Ваш E-mail:"></asp:Label>
            <asp:TextBox ID="TextBox3" TextMode="Email" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Ваш телефон:"></asp:Label>
            <asp:TextBox ID="TextBox4" TextMode="Number" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button CssClass="default-btn" ID="ButtonSend" runat="server" Text="Отправить обращение" />
         
        </div>
    </form>

        <!--====== FOOTER PART START ======-->

    <footer id="footer" class="footer-area bg_cover" style="background-image: url(assets/images/footer-bg.jpg)">
        <div class="container">
            <div class="footer-widget pt-30 pb-70">
                <div class="row">
                    <div class="col-lg-3 col-sm-6 order-sm-1 order-lg-1">
                        <div class="footer-about pt-40">
                            <a href="#">
                                <img src="assets/images/logo.png" alt="Logo">
                            </a>
                            <p class="text">Сервис юридической помощи по вопросам обращения с животными.</p>
                        </div> <!-- footer about -->
                    </div>
                    <div class="col-lg-3 col-sm-6 order-sm-3 order-lg-2">
                        <div class="footer-link pt-40">
                            <div class="footer-title">
                                <h5 class="title">Партнёры</h5>
                            </div>
                            <ul>
                                <li><a href="#">...</a></li>
                                <li><a href="#">...</a></li>
                                <li><a href="#">...</a></li>
                            </ul>
                        </div> <!-- footer link -->
                    </div>
                    <div class="col-lg-3 col-sm-6 order-sm-4 order-lg-3">
                        <div class="footer-link pt-40">
                            <div class="footer-title">
                                <h5 class="title">Государстенные органы</h5>
                            </div>
                            <ul>
                                <li><a href="http://genproc.gov.ru/contacts/ipriem/">Генеральной прокуратуры РФ</a></li>
                                <li><a href="https://blagozoo.ru/kartaregionov">Региональная нормативная база</a></li>
                                <li><a href="https://xn--b1aew.xn--p1ai/request_main">МВД Российской федерации</a></li>
                            </ul>
                        </div> <!-- footer link -->
                    </div>
                    <div class="col-lg-3 col-sm-6 order-sm-2 order-lg-4">
                        <div class="footer-contact pt-40">
                            <div class="footer-title">
                                <h5 class="title">Контакты</h5>
                            </div>
                            <div class="contact pt-10">
                                <p class="text">Большая садовая 69, Ростов-на-Дону</p>
                                <p class="text">Тех.поддержка support@site.ru</p>
                                <p class="text">Сотрудничество info@site.ru</p>

                                <ul class="social mt-40">
                                    <li><a href="#"><i class="lni-youtube"></i></a></li>
                                    <li><a href="#"><i class="lni-facebook"></i></a></li>
                                    <li><a href="#"><i class="lni-instagram"></i></a></li>
                                    <li><a href="#"><i class="lni-twitter"></i></a></li>
                                    <li><a href="#"><i class="lni-vk"></i></a></li>
                                </ul>
                            </div> <!-- contact -->
                        </div> <!-- footer contact -->
                    </div>
                </div> <!-- row -->
            </div> <!-- footer widget -->
            <div class="footer-copyright text-center">
                <p class="text">© 2022 Crafted by <a href="https://rsue.ru" rel="nofollow">students of Rostov state University</a> All Rights Reserved.</p>
            </div>
        </div> <!-- container -->
    </footer>

    <!--====== FOOTER PART ENDS ======-->
    <!--====== BACK TOP TOP PART START ======-->

    <a href="#" class="back-to-top"><i class="lni-chevron-up"></i></a>

    <!--====== BACK TOP TOP PART ENDS ======-->
    <!--====== Jquery js ======-->
    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="assets/js/vendor/modernizr-3.7.1.min.js"></script>

    <!--====== Bootstrap js ======-->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--====== Slick js ======-->
    <script src="assets/js/slick.min.js"></script>

    <!--====== Isotope js ======-->
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>

    <!--====== Counter Up js ======-->
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>

    <!--====== Circles js ======-->
    <script src="assets/js/circles.min.js"></script>

    <!--====== Appear js ======-->
    <script src="assets/js/jquery.appear.min.js"></script>

    <!--====== WOW js ======-->
    <script src="assets/js/wow.min.js"></script>

    <!--====== Headroom js ======-->
    <script src="assets/js/headroom.min.js"></script>

    <!--====== Jquery Nav js ======-->
    <script src="assets/js/jquery.nav.js"></script>

    <!--====== Scroll It js ======-->
    <script src="assets/js/scrollIt.min.js"></script>

    <!--====== Magnific Popup js ======-->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>

    <!--====== Main js ======-->
    <script src="assets/js/main.js"></script>
</body>
</html>
