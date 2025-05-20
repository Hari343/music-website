@import gg.jte.Content
@import com.music_website.app.models.Artist
@import com.music_website.app.models.Album
@import com.music_website.app.models.Track
@import java.util.List

@param String title
@param Content bodyContent
@param boolean requirePlayerScript = false

@param List<Artist> artists = null
@param List<Track> tracks = null
@param List<Album> albums = null

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${title}</title>

    <!-- Fav Icon -->
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/img/fav-icons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/img/fav-icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/img/fav-icons/favicon-16x16.png">
    <meta name="theme-color" content="#e43a90">

    <!-- Dependency Styles -->
    <link rel="stylesheet" href="/dependencies/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/dependencies/intro/css/stylesheet.css" type="text/css">
    <link rel="stylesheet" href="/dependencies/swiper/swiper.min.css" type="text/css">
    <link rel="stylesheet" href="/dependencies/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/dependencies/wow/css/animate.css" type="text/css">
    <link rel="stylesheet" href="/dependencies/magnific-popup/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/dependencies/jquery-ui/css/jquery-ui.css" type="text/css">
    <link rel="stylesheet" href="/dependencies/slick-carousel/css/slick.css" type="text/css">
    <link rel="stylesheet" href="/dependencies/colornip/css/colornip.min.css" type="text/css">
    <link rel="stylesheet" href="/dependencies/css-loader/css/css-loader.css" type="text/css">

    <!-- Site Stylesheet -->
    <link rel="stylesheet" href="/assets/css/woocommerce.css" type="text/css">
    <link rel="stylesheet" href="/assets/css/app.css" type="text/css">
    <link id="theme" rel="stylesheet" href="/assets/css/theme-color/theme-default.css" type="text/css">
</head>
<body>
    <div class="loader loader-bar-ping-pong is-active"></div>
    <div id="site">
        @template.navbar(artists = artists, albums = albums)
        ${bodyContent}
        @template.footer()
        <div class="backtotop">
            <i class="fa fa-angle-up backtotop_btn"></i>
        </div>
    </div>
    @template.scripts()
    @if (requirePlayerScript)
        @template.playerScript(tracks = tracks)
    @endif

</body>
</html>