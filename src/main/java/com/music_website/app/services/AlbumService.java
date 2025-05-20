package com.music_website.app.services;


import com.music_website.app.repo.AlbumRepo;
import com.music_website.app.models.Album;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class AlbumService {
    @Autowired
    private AlbumRepo repo;

    public List<Album> getAllAlbums() {
        return repo.findAll();
    }

    public Album getAlbum(int id) {
        return repo.findById(id).orElseThrow();
    }

    public void addAlbum(Album album) {
        repo.save(album);
    }

    public Album fetchAlbumByName(String name) {
        return repo.findByName(name);
    }

}
