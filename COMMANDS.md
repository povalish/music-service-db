# Music Service BD

## Create database

```sql
$ CREATE DATABASE musicservice;
$ \c musicservice
```


## Create account tables

```bash
$ \i create-accounts.sql
# if something goes wrong
$ DROP TABLE profile;
$ DROP TABLE account;
$ DROP TABLE permission;
```


## Play with accoounts and profiles

```sql
SELECT country, COUNT(*) FROM account
GROUP BY country;

    country     | count
----------------+-------
 Indonesia      |     4
 Czech Republic |     2
 Portugal       |     1
 Senegal        |     1
 Philippines    |     1
 United States  |     1
 China          |     2
 Armenia        |     1
 United Kingdom |     1
 Slovenia       |     1
 Vietnam        |     1
 Japan          |     1
 Russia         |     2
 Brazil         |     1
```

```sql
SELECT account.email, profile.nickname                                                                                                                  
FROM account                                                                                                                                                         
JOIN profile ON account.id = profile.accountId;

            email            |    nickname
-----------------------------+-----------------
 admin@musicify.com          | gigaadmin
 wmarcome1@free.fr           | exuding
 lsambidge2@ihg.com          | opensystem
 kbartlosz3@chronoengine.com | workforce
 bburdin4@csmonitor.com      | success
 mduffield5@drupal.org       | Seamless
 gjiranek6@timesonline.co.uk | Cross-group
 gjayne7@ehow.com            | hardware
 erabidge8@timesonline.co.uk | policy
 lorton9@state.tx.us         | capability
 mbullerwella@ca.gov         | access
 dnorcrossb@nature.com       | Networked
 shuitsonc@utexas.edu        | Managed
 gpallind@cyberchimps.com    | 3rdgeneration
 lacomee@gnu.org             | Horizontal
 amcgurnf@usgs.gov           | emulation
 acherrettg@blogger.com      | Integrated
 emiddlerh@wix.com           | solution
 lgreenleesi@histats.com     | Multichannelled
 nmakinsonj@wiley.com        | Functionbased
```

## Play with permissions
```sql
SELECT code, description FROM permission;

 code |                                                     description
------+----------------------------------------------------------------------------------------------------------------------
  100 | Basic user. Can create: playlists. Can edit: playlists. Can delete: playlists.
  110 | Music creator. Can create: songs, albums. Can edit: playlists, songs, albums. Can delete: playlists, sonngs, albums.

-- Get permissions assignment

SELECT 
AssignmentTo.email AS user, 
Permission.code AS permission, 
AssignmentBy.email AS assignment
FROM AccountPermission
LEFT JOIN Account AssignmentTo ON AccountPermission.accountId = AssignmentTo.id
LEFT JOIN Account AssignmentBy ON AccountPermission.assignmentBy = AssignmentBy.id
LEFT JOIN Permission ON AccountPermission.permissionId = Permission.id;

            user             | permission |     assignment
-----------------------------+------------+--------------------
 admin@musicify.com          |        100 |
 admin@musicify.com          |        110 |
 wmarcome1@free.fr           |        100 | admin@musicify.com
 lsambidge2@ihg.com          |        100 | admin@musicify.com
 kbartlosz3@chronoengine.com |        100 | admin@musicify.com
 bburdin4@csmonitor.com      |        100 | admin@musicify.com
 mduffield5@drupal.org       |        100 | admin@musicify.com
 gjiranek6@timesonline.co.uk |        100 | admin@musicify.com
 gjayne7@ehow.com            |        100 | admin@musicify.com
 erabidge8@timesonline.co.uk |        100 | admin@musicify.com
 lorton9@state.tx.us         |        100 | admin@musicify.com
 mbullerwella@ca.gov         |        100 | admin@musicify.com
 mbullerwella@ca.gov         |        110 | admin@musicify.com
 dnorcrossb@nature.com       |        100 | admin@musicify.com
 dnorcrossb@nature.com       |        110 | admin@musicify.com
 shuitsonc@utexas.edu        |        100 | admin@musicify.com
 gpallind@cyberchimps.com    |        100 | admin@musicify.com
 lacomee@gnu.org             |        100 | admin@musicify.com
 amcgurnf@usgs.gov           |        100 | admin@musicify.com
 acherrettg@blogger.com      |        100 | admin@musicify.com
 emiddlerh@wix.com           |        100 | admin@musicify.com
 emiddlerh@wix.com           |        110 | admin@musicify.com
 lgreenleesi@histats.com     |        100 | admin@musicify.com
 lgreenleesi@histats.com     |        110 | admin@musicify.com
 nmakinsonj@wiley.com        |        100 | admin@musicify.com
 nmakinsonj@wiley.com        |        110 | admin@musicify.com
```

## Play with songs

```sql
SELECT artists.title AS Artist, songs.title AS Song, albums.title AS Album, songs.duration_ms AS Duration
FROM song_records
JOIN artists ON artists.id = song_records.artist_id 
-- AND artist.title = 'AC/DC'
JOIN songs ON songs.id = song_records.song_id
JOIN albums ON albums.id = song_records.album_id;
```

    artist    |               song               |                 album                 | duration
--------------+----------------------------------+---------------------------------------+----------
 Taylor Swift | Love Story                       | Fearless                              |   235000
 Taylor Swift | Shake It Off                     | Fearless                              |   219000
 Taylor Swift | Blank Space                      | 1989                                  |   228000
 Beyonce      | Halo                             | Lemonade                              |   237000
 Beyonce      | Crazy in Love                    | Beyoncé                               |   235000
 Beyonce      | Single Ladies (Put a Ring on It) | Beyoncé                               |   202000
 Ed Sheeran   | Shape of You                     | Divide                                |   233000
 Ed Sheeran   | Thinking Out Loud                | Divide                                |   281000
 Ed Sheeran   | Castle on the Hill               | X                                     |   261000
 Led Zeppelin | Stairway to Heaven               | Led Zeppelin IV                       |   480000
 Led Zeppelin | Kashmir                          | Physical Graffiti                     |   420000
 Led Zeppelin | Whole Lotta Love                 | Physical Graffiti                     |   340000
 Queen        | Bohemian Rhapsody                | A Night at the Opera                  |   354000
 Queen        | We Will Rock You                 | The Game                              |   123000
 Queen        | Another One Bites the Dust       | The Game                              |   224000
 The Beatles  | Hey Jude                         | Abbey Road                            |   432000
 The Beatles  | Let It Be                        | Abbey Road                            |   237000
 The Beatles  | Yesterday                        | Sgt. Pepper's Lonely Hearts Club Band |   150000
 Pink Floyd   | Wish You Were Here               | Wish You Were Here                    |   334000
 Pink Floyd   | Comfortably Numb                 | The Dark Side of the Moon             |   391000
 Pink Floyd   | Another Brick in the Wall        | The Dark Side of the Moon             |   344000
 AC/DC        | Back in Black                    | Back in Black                         |   240000
 AC/DC        | Highway to Hell                  | Highway to Hell                       |   210000
 AC/DC        | Thunderstruck                    | Highway to Hell                       |   300000
 Nirvana      | Smells Like Teen Spirit          | Nevermind                             |   300000
 Nirvana      | Come as You Are                  | Nevermind                             |   240000
 Nirvana      | Heart-Shaped Box                 | In Utero                              |   270000


```sql
select distinct al.title
from albums al
join song_records sr on sr.album_id = al.id
join artists ar on ar.id = sr.artist_id 
where ar.title = 'Taylor Swift';
```

  title
----------
 1989
 Fearless