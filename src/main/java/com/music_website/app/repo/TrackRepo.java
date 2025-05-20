package com.music_website.app.repo;

import com.music_website.app.models.Track;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TrackRepo extends JpaRepository<Track, Integer> {
}
