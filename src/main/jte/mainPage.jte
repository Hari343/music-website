@import com.music_website.app.models.Artist
@import com.music_website.app.models.Album
@import com.music_website.app.models.Track
@import java.util.List

@param String title
@param List<Artist> artists
@param List<Track> tracks
@param List<Album> albums

@template.base(title = title, artists = artists, requirePlayerScript = true, tracks = tracks, albums = albums, bodyContent = @`
    <!--============================-->
    <!--=        	Banner         =-->
    <!--============================-->
    <section class="banner-five" data-bg-image="/media/background/taylor_swift_background.jpg">
        <div class="tim-container">
            <div id="para" class="paralax">
                <div id="paralax-1" class="scene">
                </div>
            </div>
            <div class="baneer-five-content">
                <div class="content sp-container">
                    <div class="sp-content">
                        <div class="sp-globe"></div>
                        @for (var i = 0; i < artists.size(); i++)
                            <h2 class="frame-${(i + 1) % 4}">${artists.get(i).getName()}</h2>
                        @endfor

                    </div>
                </div>
            </div>
            <!-- /.tim-container -->
        </div>
        <!-- /.tim-container -->

        <div class="smoke-wrqpper">
            <canvas id="canvas"></canvas>
        </div>

    </section>
    <!-- /#page-header -->



    <section class="header_player style-fullwidth">

        <!-- Audio Player -->
        <div class="player-container-fullwidth">

            <!-- /.current-tracks -->
            <div id="header_player" class="jp-audio" role="application" aria-label="media player">
                <div class="jp-type-playlist clearfix">
                    <div class="jp-gui jp-interface">
                        <div class="jp-controls">
                            <button class="jp-play" tabindex="0"><i class="fa fa-play"></i></button>
                        </div>
                        <!-- Display the track inside player -->

                        <div class="current-tracks">
                            <div id="main_player" class="jp-jplayer">

                            </div>
                            <div id="nowPlaying">
                                <h3 class="track-name"></h3>
                                <span class="artist-name"></span>
                            </div>
                            <!-- #nowPlaying -->
                        </div>
                        <!-- /.current-tracks -->

                        <div class="jp-progress">
                            <div class="jp-seek-bar">
                                <div class="jp-play-bar"></div>
                            </div>
                        </div>

                        <div class="jp-duration" role="timer" aria-label="duration"></div>

                        <div class="vel-wrap">
                            <button class="jp-mute" tabindex="0"><i class="fa fa-volume-up"></i></button>

                            <div class="jp-volume-bar">
                                <div class="jp-volume-bar-value"></div>
                            </div>

                        </div>
                        <!-- /.vel-wrap -->

                        <button id="playlist-toggle" class=""><i class="fa fa-list"></i></button>

                        <!-- Playlist -->
                        <div class="jp-playlist">
                            <ul>
                                <li></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





    <!--==============================-->
    <!--=        	Artist lineup         =-->
    <!--==============================-->
    <section class="section-padding-two artist-lineup">
        <div class="tim-container clearfix">
            <div class="row">
                <div class="section-title style-four">
                    <h2>ARTIST LINEUP</h2>
                    <p>These are some of the best music artists ...</p>
                </div>
            </div>
            <div class="swiper-container row" data-swiper-config='{ "loop": true, "prevButton":".swiper-button-prev", "nextButton": ".swiper-button-next", "speed": 700, "autoplay": "5000", "slidesPerView": 6, "spaceBetween": 0, "grabCursor": true,"breakpoints": { "1300": { "slidesPerView": 4 }, "767": { "slidesPerView": 3 }, "500": { "slidesPerView": 1 }}}'>
                <ul class="artist-line-wrapper swiper-wrapper">
                    @for (Artist artist : artists)
                        <li class="artist-single clearfix swiper-slide" onclick="location.replace('${"/artist/" + artist.getId()}')">
                            <img src='${artist.getImage()}' alt="">
                            <div class="artist-single-content">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                </ul>
                                <h6>${artist.getName()}</h6>
                            </div>
                        </li>
                    @endfor
                </ul>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
        <!-- /.tim-container -->
    </section>
    <!-- /#about -->


    <!--==============================-->
    <!--=        	Latest release         =-->
    <!--==============================-->
    <section class="section-padding latest-relese">
        <div class="container">
            <div class="row">
                <div class="section-title style-four">
                    <h2>Favorite Song</h2>
                </div>
                <div class="d-flex justify-content-center">
                    <div class="col-xl-10" id="moving-player">
                        <div class="row">
                            <div class="col-sm-8 col-md-9 col-lg-8">
                                <div class="latest-album-left">
                                    <div class="cover-img">
                                        <img class="rescaled-img" src="/media/albumart/faded_cover.jpg" alt="">
                                    </div>
                                    <div class="albun-details">
                                        <h6>ALBUM INFO</h6>
                                        <p>Alan Walkers famous single,
                                            <span>“Faded”</span>. Officialy it is released on 2015.</p>
                                    </div>
                                </div>

                            </div>
                            <div class="col-sm-4 col-md-3 col-lg-4">
                                <div class="latest-album-right">
                                    <h6>LISTEN NOW</h6>
                                    <div class="latest-album-btn">
                                        <a href="/media/audio/faded.mp3" class="sm2_button"><i></i></a>
                                    </div>

                                </div>
                            </div>
                            <div class="col-xl-12">
                                <div class="record-player">
                                    <div class="player-main">
                                        <img src="/media/background/record.png" alt="">
                                    </div>
                                    <div class="player-main-shade">
                                        <img src="/media/background/record-shade.png" alt="">
                                    </div>
                                    <div class="record-key">
                                        <img src="/media/background/player-key.png" alt="">
                                    </div>
                                </div>

                            </div>




                            <div class="bubble-wrap">
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-4"></div>

                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-5"></div>

                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>


                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-3"></div>

                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-5"></div>

                            </div>

                            <div class="bubble-wrap-right">
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-4"></div>

                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-5"></div>

                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>


                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-3"></div>

                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-1"></div>

                                <div class="bubble icon-5"></div>

                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>

                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-1"></div>

                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-4"></div>

                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-3"></div>

                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-5"></div>
                                <div class="bubble icon-2 "></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-1"></div>
                                <div class="bubble icon-3"></div>
                                <div class="bubble icon-4"></div>
                                <div class="bubble icon-5"></div>


                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.latest-album-info -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.tim-container -->
    </section>
    <!-- /#about -->



    <!--==============================-->
    <!--=        	Latest album         =-->
    <!--==============================-->
    <section id="trending" class="three-d-album">
        <div class="section-title style-four">
            <h2>TRENDING ALBUMS</h2>
            <p>These are the trending albums featured in this website</p>
        </div>
        <div class="more-album">
            <a href='/albums'>SEE ALL ALBUMS<i class="fa fa-play" aria-hidden="true"></i></a>
        </div>
        <div class="three-d-album-width">
            <div class="row">

                <div class="threed-container-wrapper">
                    <div class="threed-container-inner">
                        <div class="single-3d empty-space">
                        </div>
                        @for (var i = 0; i < albums.size(); i++)
                        <div class="single-3d">
                            <a href='/album/${albums.get(i).getName()}'><img src='${albums.get(i).getAlbumArt()}' alt=""></a>
                        </div>
                        @if (i % 3 == 0)
                                <div class="single-3d  empty-space">
                                </div>
                        @endif
                        @endfor
                    </div>
                </div>
            </div>

        </div>
        <!-- /.tim-container -->
    </section>
    <!-- /#about -->

    <!--==============================-->
    <!--=        	Show ticket        =-->
    <!--==============================-->
    <section class="section-padding show-archive">
        <div class="container">
            <div class="d-flex justify-content-center row">
                <div class="col-xl-10">
                    <div class="section-title style-four">
                        <h2>Popular Tracks</h2>
                    </div>
                    @for (var track : tracks.subList(0, Math.min(5, tracks.size())))
                    <div class="single-show-ticket row no-guters">
                        <div class="col-sm-3 col-md-3 col-lg-3">
                            <div class="date-time">
                                <h6>${track.getLength()}</h6>
                                <p>Duration</p>
                            </div>

                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-7">
                            <h5>${track.getName()}</h5>
                            <p>${track.getArtist()}</p>
                        </div>
                        <div class="col-sm-3 col-md-3 col-lg-2">
                            <div class="a_hover">
                                <a href='/album/${track.getAlbum()}'>Go to Album</a>
                                <img class="svg" src="/media/background/round_black.svg" alt="">
                                <img class="svg" src="/media/background/round.svg" alt="">
                                <i class="fa fa-play" aria-hidden="true"></i>

                            </div>
                        </div>
                    </div>
                    @endfor
                </div>
            </div>
            <!-- /.latest-album-info -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.show-archive -->


    <!--============================-->
    <!--=        	Spotlight          =-->
    <!--============================-->
    <section id="eras-tour" class="section-padding-two wide_line_bg">
        <div class="container">
            <div class="d-flex justify-content-center row">
                <div class="col-xl-10">
                    <div class="section-title style-five">
                        <h2>SPOTLIGHT</h2>
                        <p>Taylor Swift Eras Tour</p>
                    </div>
                    <div class="row">
                        <div class="grid-60">
                            <div class="spotlight-inner">
                                <img src="/media/performance/taylor_swift_eras.png" alt="">
                                <div class="video-player-three">
                                    <a href="https://www.youtube.com/watch?v=KudedLV0tP0" class="video-btn-four popup-video-btn">
                                        <i class="fa fa-play"></i>
                                    </a>
                                    <div class="video-btn-shade">
                                        <i class="fa fa-play"></i>
                                    </div>
                                    <div class="text">
                                        <p>Taylor Swift Eras Tour</p>
                                        <span>Singapore, 2024</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- /.col-xl-4 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.col-xl- -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
    <!-- /#about -->
`)


