package com.music_website.app.models;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import org.springframework.stereotype.Component;


@Entity
@Component
public class Artist {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int id;
    private String name;
    private int debutYear;
    private int totalAlbums;
    private String description;
    private String image;

    public Artist() {
    }

    public Artist(int id, String name, int debutYear, int totalAlbums, String description, String image) {
        this.id = id;
        this.name = name;
        this.debutYear = debutYear;
        this.totalAlbums = totalAlbums;
        this.description = description;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getDebutYear() {
        return debutYear;
    }

    public int getTotalAlbums() {
        return totalAlbums;
    }

    public String getDescription() {
        return description;
    }

    public String getImage() {
        return image;
    }
}
