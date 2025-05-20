@import com.music_website.app.models.Artist
@import com.music_website.app.models.Album
@import com.music_website.app.models.Track
@import java.util.List

@param String title
@param List<Artist> artists
@param List<Track> tracks
@param List<Album> albums
@param Album album

@template.base(title = title, artists = artists, requirePlayerScript = true, tracks = tracks, albums = albums, bodyContent = @`
    <!--============================-->
    <!--=        	Banner         =-->
    <!--============================-->

    <section class="page-header" data-bg-image='${album.getAlbumArt()}'>
        <div class="tim-container">
            <div class="page-header-title text-center">
                <h3>${ album.getName()}</h3>
                <h2>${ album.getArtist() }</h2>
            </div>

            <div class="breadcrumbs">
                <a href='/'>Home</a>
                <span>/</span>
                <span>Album / ${ album.getName() }</span>
            </div>

        </div>
        <!-- /.tim-container -->
    </section>
    <!-- /#page-header -->

    <!--==================================-->
    <!--=        	Tabs Single          =-->
    <!--==================================-->
    <section class="section-padding album-info-wrapper">
        <div class="container">
            <div class="row single-album-info">

                <div class="col-md-6 padding-remove">
                    <div class="single-album-image">
                        <img src='${album.getAlbumArt()}' alt="">
                    </div>
                </div>
                <!-- /.col-lg-6 -->

                <div class="col-md-6 padding-remove">
                    <div class="single-album-details">
                        <div class="details-top">
                            <h6>${ album.getName() }</h6>
                            <p>Album details: </p>
                        </div>

                        <ul>
                            <li>Album Type<span>${ album.getTotalTracks() == 1 ? "Single" : "Multiple"}</span></li>
                            <li>Artist<span>${ album.getArtist()}</span></li>
                            <li>Release Day <span> ${ album.getReleasedYear() }</span></li>
                            <li>Genre <span>Melody</span></li>
                            <li>Produce By <span>${ album.getArtist() }}</span></li>
                            <li>Number Of Track <span>${ album.getTotalTracks() }</span></li>
                        </ul>

                        <div class="single-album-description">
                            <h6>Album Description</h6>
                            <p> ${ album.getDescription() }</p>
                        </div>

                    </div>
                </div>
                <!-- /.col-lg-6 -->

            </div>
            <!-- /.row -->
        </div>
        <!-- /.tim-container-two -->
    </section>
    <!-- /.album-info  -->


    <section class="single-album-player section-padding">
        <div class="container">
            <div class="row">
                <div class="header_player">
                    <!-- Audio Player -->
                    <div class="player-container">
                        @if (!tracks.isEmpty())
                        <div class="current-tracks">
                            <div id="main_player" class="jp-jplayer"><audio id="jp_audio_0" preload="metadata" src='${tracks.get(0).getFilename() }}' title='${ tracks.get(0).getName() }'></audio></div>
                            <div id="nowPlaying">
                                <h3 class="track-name">${ tracks.get(0).getName() }</h3>
                                <span class="artist-name">${ tracks.get(0).getName() }</span>
                            </div>
                            <!-- #nowPlaying -->
                        </div>
                        @endif
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
                                            @for (var track: tracks)
                                            <li class="jp-playlist-current">
                                                <div><a href="javascript:;" class="jp-playlist-item jp-playlist-current" tabindex="0">${ track.getName() }<span class="jp-artist">by ${ track.getArtist() }</span></a></div>
                                            </li>
                                            @endfor
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container  -->
    </section>
    <!-- /.single-album-player  -->
`)