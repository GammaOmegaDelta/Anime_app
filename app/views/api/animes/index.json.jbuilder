json.array! @animes.each do |anime|
  json.id anime.id
  json.title anime.title
  json.description anime.description
  json.genre anime.genre
end