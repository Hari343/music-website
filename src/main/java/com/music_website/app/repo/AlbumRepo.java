package com.music_website.app.repo;


import com.music_website.app.models.Album;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AlbumRepo extends JpaRepository<Album, Integer> {
    public Album findByName(String name);
}
