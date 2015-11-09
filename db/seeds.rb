# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Band.create(name: "Moby")
  Band.create(name: "Sting")
  Band.create(name: "Tom Waits")

  band1 = Band.first
  band1.albums.create(name: "Innocents", year: 2013)
  band1.albums.create(name: "Wait for me", year: 2009)
  band2 = Band.second
  band2.albums.create(name: "The Last Ship", year: 2013)


  band3 = Band.third
  band3.albums.create(name: "Blue Valentine", year: 2015)
  band3.albums.create(name: "Bad As Me", year: 2011)

  album1 = Album.first
  Track.create(name: "Everything That Rises",  album_id: album1.id)
  Track.create(name: "Going Wrong",  album_id: album1.id)
  Track.create(name: "Almost Home",  album_id: album1.id)
  Track.create(name: "A Case fro Shame",  album_id: album1.id)
  Track.create(name: "The Perfect Life",  album_id: album1.id)
  Track.create(name: "A Long Time",  album_id: album1.id)
  Track.create(name: "Saints",  album_id: album1.id)
  Track.create(name: "Tell Me",  album_id: album1.id)
  Track.create(name: "The Lonely Night",  album_id: album1.id)
  Track.create(name: "The Dogs",  album_id: album1.id)



  album2 = Album.second
  album2.tracks.create(name: "Division")
  album2.tracks.create(name: "Pale Horses")
  album2.tracks.create(name: "Study War")
  album2.tracks.create(name: "Walk With Me")
  album2.tracks.create(name: "Stock Radio")
  album2.tracks.create(name: "Mistake")
  album2.tracks.create(name: "Hope is Gone")
  album2.tracks.create(name: "Isolate")
  album2.tracks.create(name: "TGhost Return")
