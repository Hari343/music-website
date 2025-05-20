@import com.music_website.app.models.Artist
@import com.music_website.app.models.Album
@import java.util.List

@param String title
@param List<Artist> artists
@param List<Album> albums

@template.base(title = title, artists = artists, requirePlayerScript = false, albums = albums, bodyContent = @`
    <!--============================-->
    <!--=        	Banner         =-->
    <!--============================-->

    <section class="page-header" data-bg-image='/media/albumart/lily_cover.jpg'>
        <div class="tim-container">
            <div class="page-header-title text-center">
                <h3>Albums</h3>
                <h2>Gallery</h2>
            </div>

            <div class="breadcrumbs">
                <a href='/'>Home</a>
                <span>/</span>
                <span>Gallery</span>
            </div>

        </div>
        <!-- /.tim-container -->
    </section>
    <!-- /#page-header -->

    <!--===========================-->
    <!--=        	About         =-->
    <!--===========================-->

    <section id="gallery" class="section-padding">
        <div class="tim-container">
            <div class="section-title text-center">
                <h2>Music <span>Gallery</span></h2>
            </div>
        </div>
        <!-- /.tim-container -->

        <div class="tim-container d-flex justify-content-center">
            <div class="col-xl-10">
                <div class="tim-isotope tim-isotope-2 wow fadeInUp" data-wow-delay="0.8s">
                    <ul class="tim-filter-items tim-album-items grid">
                        <li class="grid-sizer"></li>
                        @for (Album album : albums)
                        <li class="tim-album-item grid-item bass piano guiter" onclick="location.replace('${ "/album/" + album.getName() }')">
                            <div class="tim-isotope-grid__img effect-active">
                                <img src='${album.getAlbumArt()}' alt="album thumb" />
                            </div>

                            <div class="gallery_details_wrap">
                                <div class="gallery-info">

                                    <h4 class="album-title">${ album.getName() }</h4>
                                    <h5 class="artist-name">${ album.getArtist() }</h5>

                                </div>
                            </div>
                        </li>
                        @endfor

                    </ul>
                </div>
            </div>
        </div>
        <!-- /.tim-container -->
    </section>
    <!-- /#gallery -->
`)