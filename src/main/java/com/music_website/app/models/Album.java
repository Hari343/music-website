package com.music_website.app.models;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import org.springframework.stereotype.Component;


@Entity
@Component
public class Album {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int id;
    private String name;
    private int released_year;
    private int totalTracks;
    private String artist;
    private String albumArt;
    private String description;

    public Album() {
    }

    public Album(int id, String name, int released_year, int totalTracks, String artist, String albumArt, String description) {
        this.id = id;
        this.name = name;
        this.released_year = released_year;
        this.totalTracks = totalTracks;
        this.artist = artist;
        this.albumArt = albumArt;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getReleasedYear() {
        return released_year;
    }

    public int getTotalTracks() {
        return totalTracks;
    }

    public String getArtist() {
        return artist;
    }

    public String getAlbumArt() {
        return albumArt;
    }

    public String getDescription() {
        return description;
    }
}
