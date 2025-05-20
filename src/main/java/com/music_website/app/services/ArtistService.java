package com.music_website.app.services;


import com.music_website.app.models.Artist;
import com.music_website.app.repo.ArtistRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.NoSuchElementException;


@Service
public class ArtistService {
    @Autowired
    private ArtistRepo repo;

    public List<Artist> getAllArtists() {
        return repo.findAll();
    }

    public Artist getArtist(int id) {
        return repo.findById(id).orElseThrow();
    }

    public void addArtist(Artist artist) {
        repo.save(artist);
    }

    public void deleteArtist(int id) {
        repo.deleteById(id);
    }

    public void updateArtist(Artist artist) {
        repo.save(artist);
    }

}
