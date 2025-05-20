@import com.music_website.app.models.Artist
@import com.music_website.app.models.Album
@import com.music_website.app.models.Track
@import java.util.List

@param String title
@param Artist artist
@param List<Artist> artists
@param List<Track> tracks
@param List<Album> albums

@template.base(title = title, artists = artists, requirePlayerScript = true, tracks = tracks, albums = albums, bodyContent = @`
    <section id="banner-one">
        <div class="swiper-container banner-slider-two" data-swiper-config='{"loop": true, "effect": "slide", "prevButton":"#banner-nav-prev", "nextButton": "#banner-nav-next", "speed": 700, "autoplay": 500000, "paginationClickable": true}'>

            <div class="swiper-wrapper">
                <div class="swiper-slide" data-bg-image='${artist.getImage()}' data-parallax="image">

                    <div class="slider-content-two content-three" data-animate="fadeIn">
                        <img src="/media/banner/1.png" alt="Music">
                        <div class="content text-center">
                            <h3 data-animate="fadeInUp">Artist</h3>
                            <h2 data-animate="fadeInUp" data-delay="0.5s">
                                ${artist.getName()}
                            </h2>
                        </div>

                    </div>
                    <!-- /.slider-content -->

                </div>
            </div>


            <div class="header_player">
                <div class="tim-container ">
                    <!-- Audio Player -->
                    <div class="player-container">
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

                        <div id="header_player" class="jp-audio" role="application" aria-label="media player">
                            <div class="jp-type-playlist clearfix">
                                <div class="jp-gui jp-interface">
                                    <div class="jp-controls">
                                        <button class="jp-previous" tabindex="0"><i class="fa fa-backward"></i></button>
                                        <button class="jp-play" tabindex="0"><i class="fa fa-play"></i></button>
                                        <button class="jp-next" tabindex="0"><i class="fa fa-forward"></i></button>
                                    </div>
                                    <!-- Display the track inside player -->

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
                </div>
            </div>
            <!-- /.header_player -->
        </div>
    </section>
    <!-- /#banner-one -->

    <!--===========================-->
    <!--=        	About         =-->
    <!--===========================-->

    <section id="about" class="section-padding">
        <div class="tim-container">
            <div class="row">
                <div class="col-xl-6 col-lg-12">
                    <div class="about-details">
                        <img src='${artist.getImage()}' alt="About">

                        <h3>${ artist.getName() }</h3>
                        <h4><span>Genre :</span> Guitarist/Singer</h4>

                        <p>
                            ${ artist.getDescription() }
                        </p>

                        <div class="artist-music-inner clearfix">
                            <div class="aritist-music">
                                <div class="icon">
                                    <i class="tim-music-album"></i>
                                </div>

                                <div class="content">
                                    <p>${ artist.getTotalAlbums() }</p>
                                    <span>Albums</span>
                                </div>
                            </div>

                            <div class="aritist-music clearfix">
                                <div class="icon">
                                    <i class="tim-music-album-1"></i>
                                </div>

                                <div class="content">
                                    <p>${ artist.getDebutYear() }</p>
                                    <span>Debut Year</span>
                                </div>
                            </div>
                        </div>
                        <!-- /.artist-music-inner -->
                    </div>
                    <!-- /.about-details -->
                </div>
                <!-- /.col-md-6 -->

                <div class="col-xl-6 col-lg-12">
                    <div class="about-details mt__30">
                        <h3>Available Tracks</h3>
                    </div>

                    <!-- START Audio Player -->
                    <div class="music-playlist-one">
                        <ul class="hit-plalist">
                            @for (var track : tracks)
                                <li>
                                    <a href='${ track.getFilename() }' class="sm2_button"><i></i></a>
                                    <span class="song-name">${ track.getName() }</span>
                                    <span class="dur">${ track.getLength() }</span>
                                </li>
                            @endfor
                        </ul>
                    </div>
                    <!-- /.music-playlist-one -->
                    <!-- END Audio Player -->
                </div>
                <!-- /.col-md-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.tim-container -->
    </section>
    <!-- /#about -->
`)

