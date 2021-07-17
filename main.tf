terraform {
  required_providers {
    spotify = {
      version = "~> 0.1.5"
      source  = "conradludgate/spotify"
    }
  }
}

variable "spotify_api_key" {
  type        = string
  description = "Set this as the APIKey that the authorization proxy server outputs"
}

provider "spotify" {
  api_key = var.spotify_api_key
}

resource "spotify_playlist" "playlist" {
  name        = "TF Summer City"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
    data.spotify_track.rainych.id,
    data.spotify_track.kasekicider.id,
    data.spotify_track.lilasikuta.id,
    data.spotify_track.schadaraparr.id,
    data.spotify_track.fishmans.id,
    data.spotify_track.tomokoaran.id,
    data.spotify_track.neveryoungbeach.id,
    data.spotify_track.sadisticmikaband.id,
  ]
}

data "spotify_track" "sadisticmikaband" {
  url = "https://open.spotify.com/track/7gXhYZSJ8lPXelMWpRkMcU?si=8c3333d765894097"
}

data "spotify_track" "rainych" {
  url = "https://open.spotify.com/track/27oRunmCZif54vlE6SzVG6?si=f3da98047c134f18"
}

data "spotify_track" "lilasikuta" {
  url = "https://open.spotify.com/track/1LYwt3AKaO8v9TvvYftUmA?si=1134cf4a7d6e4ab7"
}

data "spotify_track" "kasekicider" {
  url = "https://open.spotify.com/track/5YV3U6OcgeI4fdHDAmz2pY?si=fcb83aff163542b6"
}

data "spotify_track" "schadaraparr" {
  url = "https://open.spotify.com/track/6ZF81Gyd6PvhHLMSZ9CRkH?si=bb2da631dfe340f8"
}

data "spotify_track" "fishmans" {
  url = "https://open.spotify.com/track/36Thm3dOVuCR4SFyzwJioN?si=4dd88f8bde724d8a"
}

data "spotify_track" "tomokoaran" {
  url = "https://open.spotify.com/track/0JUWF44gfMszGNhjCF7Ufs?si=24bd7b8232b541d9"
}

data "spotify_track" "neveryoungbeach" {
  url = "https://open.spotify.com/track/7LUWoJeF00KOeu3jc7nb5E?si=3a0d3441ec6b4143"
}

output "playlist_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.playlist.id}"
  description = "Visit this URL in your browser to listen to the playlist"
}
