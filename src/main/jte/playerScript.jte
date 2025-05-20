@import com.music_website.app.models.Track
@import java.util.List

@param List<Track> tracks

<script src="/dependencies/jPlayer/js/jquery.jplayer.min.js"></script>
<script src="/dependencies/jPlayer/js/jplayer.playlist.min.js"></script>
<script>
    jQuery(document).ready(function($) {
        "use strict";

        /* Banner Player */
        $('#header_player').each(function () {
            var myPlaylist = new jPlayerPlaylist({
                jPlayer: "#main_player",
                cssSelectorAncestor: "#header_player"
            }, [
                @for (var track : tracks)

                    {
                    title: '${ track.getName() }',
                    artist: '${ track.getArtist() }',
                    mp3: '${ track.getFilename() }',
                    poster: "${track.getImage()}",
                    },

                @endfor
            ], {
                playlistOptions: {
                    enableRemoveControls: true,
                    html: '.play',
                    // autoPlay: true,
                },
                swfPath: "dependencies/jPlayer/js",
                supplied: "oga, mp3",
                wmode: "window",
                useStateClassSkin: true,
                toggleDuration: true,
                autoBlur: false,
                smoothPlayBar: true,
                keyEnabled: true,
                displayTime: 'slow',
            });


            // Show The Current Track !!
            $("#main_player").on(
                $.jPlayer.event.ready + ' ' + $.jPlayer.event.play,
                function (event) {
                    var current = myPlaylist.current;
                    var playlist = myPlaylist.playlist;
                    $.each(playlist, function (index, obj) {
                        if (index == current) {
                            $("#nowPlaying .track-name").html(obj.title);
                            $("#nowPlaying .artist-name").html(obj.artist);
                        }
                    });
                });
        });

    });
</script>