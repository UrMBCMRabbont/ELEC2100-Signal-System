[song1, fs] = audioread("song1c.mp4");
%%sound(song1, fs);

rough_song1 = song1(1:20:length(song1));
sound(rough_song1, fs/20);