package com.music_website.app.controllers;
import com.music_website.app.services.ArtistService;
import com.music_website.app.services.AlbumService;
import com.music_website.app.services.TrackService;
import gg.jte.ContentType;
import gg.jte.TemplateEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @Autowired
    ArtistService artistService;
    @Autowired
    TrackService trackService;
    @Autowired
    AlbumService albumService;

    @RequestMapping("/")
    public String initialPage(Model model) {
        model.addAttribute("title", "Java Template Engine");
        model.addAttribute("artists", artistService.getAllArtists());
        model.addAttribute("tracks", trackService.getAllTracks());
        model.addAttribute("albums", albumService.getAllAlbums());
        return "mainPage";
    }

    @RequestMapping("/artist/{id}")
    public String artistPage(@PathVariable int id, Model model) {
        var artist = artistService.getArtist(id);
        model.addAttribute("title", artist.getName());
        model.addAttribute("artist", artist);
        model.addAttribute("artists", artistService.getAllArtists());
        model.addAttribute("tracks", trackService.getTracksByArtist(artist.getName()));
        model.addAttribute("albums", albumService.getAllAlbums());
        return "artist";
    }

    @RequestMapping("/albums")
    public String albumsPage(Model model) {
        model.addAttribute("title", "Albums");
        model.addAttribute("artists", artistService.getAllArtists());
        model.addAttribute("albums", albumService.getAllAlbums());
        return "albums";
    }

    @RequestMapping("/album/{name}")
    public String albumPage(@PathVariable String name, Model model) {
        var album = albumService.fetchAlbumByName(name);
        model.addAttribute("title", name);
        model.addAttribute("album", album);
        model.addAttribute("artists", artistService.getAllArtists());
        model.addAttribute("tracks", trackService.getTracksByAlbum(name));
        model.addAttribute("albums", albumService.getAllAlbums());
        return "album";
    }




}
