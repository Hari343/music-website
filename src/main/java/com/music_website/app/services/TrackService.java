package com.music_website.app.services;

import com.music_website.app.models.Track;
import com.music_website.app.repo.TrackRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TrackService {
    @Autowired
    private TrackRepo repo;

    public List<Track> getAllTracks() {
        return repo.findAll();
    }

    public Track getTrack(int id) {
        return repo.findById(id).orElseThrow();
    }

    public List<Track> getTracksByArtist(String artistName) {
        var tracks = new ArrayList<Track>();
        for (var track : repo.findAll()) {
            if (track.getArtist().equals(artistName)) {
                tracks.add(track);
            }
        }
        return tracks;
    }

    public List<Track> getTracksByAlbum(String albumName) {
        var tracks = new ArrayList<Track>();
        for (var track : repo.findAll()) {
            if (track.getAlbum().equals(albumName)) {
                tracks.add(track);
            }
        }
        return tracks;
    }


}
