@import com.music_website.app.models.Artist
@import com.music_website.app.models.Album

@import java.util.List

@param List<Artist> artists
@param List<Album> albums

<!--=========================-->
<!--=        Navbar         =-->
<!--=========================-->
<header class="header header-magic-line">
    <div class="header-inner">
        <div class="tim-container clearfix">
            <div class="header-magic-line-inner clearfix">
                <div id="site-logo" class="float-left">
                    <a href="/" class="logo-main">
                        <img class="navbar-logo" src="/assets/img/logo.png" alt="logo">
                    </a>

                    <a href='/' class="logo-stickky">
                        <img class="navbar-logo" src="/assets/img/logo.png" alt="logo">
                    </a>
                </div>


                <div class="nav">
                    <ul class="group" id="header-menu-magic-line">
                        <li class="menu-item-has-children ">
                            <a href="/">Home </a>
                        </li>
                        <li class="menu-item-has-children current_page_item">
                            <a>Artists</a>
                            <ul class="sub-menu">
                                @for (var artist: artists)
                                <li><a href="/artist/${artist.getId()}">${artist.getName()}</a></li>
                                @endfor
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="/albums">Albums</a>
                            <ul class="sub-menu">
                                @for (var album : albums)
                                <li><a href="/album/${album.getName()}">${album.getName()}</a></li>
                                @endfor
                            </ul>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="/#trending">Trending</a>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="/#eras-tour">Spotlight</a>
                        </li>
                    </ul>
                </div>
                <!-- /.nav -->
            </div>
        </div>
        <!-- /.tim-container -->
    </div>
    <!-- /.header-inner -->
</header>
<!-- /#header -->

<div class="offset-menu-two">
    <a href="#" class="offset-closer"><img src="/assets/img/offset-cross2.png" alt=""></a>

    <div class="footer-about">
        <p> There are many variations of passages of Lorem Ipsum available </p>

        <div class="footer-contact">
            <div class="contact-details clearfix">
                <i class="fa fa-phone"></i>
                <p>Call: +01 245 815 8246</p>
            </div>

            <div class="contact-details clearfix">
                <i class="fa fa-envelope"></i>
                <p> info@yourdomain.com </p>
            </div>

            <div class="contact-details clearfix">
                <i class="fa fa-map-marker"></i>
                <p> 22 No. Street New York, West beas park.New York, USA </p>
            </div>
        </div>
        <!-- /.footer-address -->
    </div>


    <div class="offset-social-two">
        <a href="">
            <img src="/assets/img/logo_5.png" alt="">
        </a>
        <ul>
            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
        </ul>
    </div>
</div>



<!--=============================-->
<!--=        Mobile Nav         =-->
<!--=============================-->
<header id="mobile-nav-wrap">
    <div class="mob-header-inner d-flex justify-content-between">
        <div id="mobile-logo" class="d-flex justify-content-start">
            <a href='#'><img src="/assets/img/logo.png" alt="Site Logo"></a>
        </div>

<%--        <ul class="user-link nav justify-content-end">--%>
<%--            <li><a href="#"><i class="fa fa-user"></i>Login</a></li>--%>
<%--            <li><a href="#"><i class="fa fa-sign-in"></i>Sign Up</a></li>--%>
<%--        </ul>--%>

        <div id="nav-toggle" class="nav-toggle hidden-md">
            <div class="toggle-inner">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
    <!-- /.mob-header-inner -->
</header>
<!-- /#mobile-header -->

<div class="mobile-menu-inner">

    <div class="mobile-nav-top-wrap">
        <div class="mob-header-inner clearfix">
            <div class="d-flex justify-content-start mobile-logo">
                <a href='/'>
                    <img src="/assets/img/logo-dark.png" alt="Site Logo">
                </a>
            </div>

            <div class="close-menu">
                <span class="bar"></span>
                <span class="bar"></span>
            </div>
        </div>
        <!-- /.mob-header-inner -->

        <div class="close-menu">
            <span class="bar"></span>
            <span class="bar"></span>
        </div>
    </div>
    <!-- /.mobile-nav-top-wrap -->

    <nav id="accordian">
        <ul class="accordion-menu">
            <li>
                <a href='/'>Home</a>
            </li>
            <li>
                <a class="dropdownlink">Artist</a>
                <ul class="submenuItems">
                     @for (var artist: artists)
                        <li><a href='/artist/${artist.getId()}'>${artist.getName()}</a></li>
                     @endfor
                </ul>
            </li>
            <li>
                <a href='/albums' class="dropdownlink">Albums</a>
                <ul class="submenuItems">
                    @for (var album : albums)
                        <li><a href='#'>${album.getName()}</a></li>
                    @endfor
                </ul>

            </li>
            <li>
                <a href='/#trending'>Trending</a>
            </li>
            <li>
                <a href='/#eras-tour'>Spotlight</a>

            </li>
        </ul>
    </nav>
</div>
<!-- /.mobile-menu-inner -->

