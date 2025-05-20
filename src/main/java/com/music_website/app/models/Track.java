package com.music_website.app.models;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import org.springframework.stereotype.Component;


@Entity
@Component
public class Track {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int id;
    private String name;
    private String artist;
    private String album;
    private String length;
    private String filename;
    private String image;

    public Track() {
    }

    public Track(int id, String name, String artist, String album, String length, String filename, String image) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.album = album;
        this.length = length;
        this.filename = filename;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getArtist() {
        return artist;
    }

    public String getAlbum() {
        return album;
    }

    public String getLength() {
        return length;
    }

    public String getFilename() {
        return filename;
    }

    public String getImage() {
        return image;
    }


}
