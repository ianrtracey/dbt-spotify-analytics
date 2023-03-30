WITH source AS (
    SELECT
        *
    FROM
        {{ source(
            'spotify',
            'playlist_items'
        ) }}
),
stage_playlists AS (
    SELECT
        DISTINCT playlist_id,
        track_id,
        track_name,
        track_duration,

        asdasdasdas
        track_is_explicit,
        track_popularity,
        album_id,
        album_name,
        album_release_year,
        artist_id,
        artist_id_others,
        artist_popularity,
        artist_followers,
        artist_genre,
        artist_genre_others,
        track_danceability,
        track_energy,
        track_key,
        track_liveness,
        track_loudness
    FROM
        source
    WHERE
        track_id IS NOT NULL
        AND artist_id IS NOT NULL
)
SELECT
    *
FROM
    stage_playlists
