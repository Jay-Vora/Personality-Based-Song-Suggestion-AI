% Personality type factors
factor(introvert).
factor(extrovert).
factor(intuitive).
factor(observant).
factor(thinking).
factor(feeling).
factor(judging).
factor(prospecting).
% Mood factors
factor(happy).
factor(sad).
factor(angry).
factor(calm).

% Songs based on personality type
song(introvert, ['Hello', 'Everybody Hurts', 'The Scientist', 'Don\'t Speak', 'Mad World', 'Someone Like You']).
song(extrovert, ['Party in the U.S.A.', 'I Gotta Feeling', 'Can\'t Stop the Feeling!', 'Shut Up and Dance', 'Uptown Funk', 'Happy']).
song(intuitive, ['Stairway to Heaven', 'Bohemian Rhapsody', 'November Rain', 'Hotel California', 'Imagine', 'Hallelujah']).
song(observant, ['Hello', 'Everybody Hurts', 'The Scientist', 'You Raise Me Up', 'Bridge Over Troubled Water', 'How Deep Is Your Love']).
song(thinking, ['Stairway to Heaven', 'Bohemian Rhapsody', 'November Rain', 'Clocks', 'The Sound of Silence', 'Comfortably Numb']).
song(feeling, ['Hello', 'Everybody Hurts', 'The Scientist', 'Someone Like You', 'Fix You', 'Say You Love Me']).
song(judging, ['Stairway to Heaven', 'Bohemian Rhapsody', 'November Rain', 'Don\'t Stop Believin\'', 'Livin\' on a Prayer', 'Eye of the Tiger']).
song(prospecting, ['Hello', 'Everybody Hurts', 'The Scientist', 'Sweet Child o\' Mine', 'Enter Sandman', 'Back in Black']).


% Songs based on mood
song(happy, ['Happy', 'Uptown Funk', 'I am Still Standing', 'Best Day of My Life', 'Can\'t Stop the Feeling!', 'Shake It Off']).
song(sad, ['Everybody Hurts', 'Someone Like You', 'Nothing Compares 2 U', 'Tears in Heaven', 'Hurt', 'All I Want']).
song(angry, ['Killing in the Name', 'Break Stuff', 'Smells Like Teen Spirit', 'Bulls on Parade', 'Kashmir', 'Welcome to the Jungle']).
song(calm, ['Weightless', 'Electra', 'Mellomaniac (Chillout Mix)', 'The Best Is Yet to Come', 'Colors of the Wind', 'The Way It Is']).


% Rules to suggest songs based on personality type and mood
suggest_songs :-
    write('Are you an introvert or extrovert? '),
    read(PersonalityType),
    write('Are you feeling happy, sad, angry, or calm? '),
    read(Mood),
    song(PersonalityType, PersonalitySongs),
    song(Mood, MoodSongs),
    append(PersonalitySongs, MoodSongs, Songs),
    write('Here are some songs for you: '),
    write(Songs).
