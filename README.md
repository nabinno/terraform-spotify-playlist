# terraform-spotify-playlist
Ref. [Create a Spotify Playlist with Terraform | Terraform - HashiCorp Learn](https://learn.hashicorp.com/tutorials/terraform/spotify-playlist)

## Launch spotify_auth_proxy (Authentication Server)
```sh
$ docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy
Unable to find image 'ghcr.io/conradludgate/spotify-auth-proxy:latest' locally
latest: Pulling from conradludgate/spotify-auth-proxy
5843afab3874: Pull complete
b244520335f6: Pull complete
Digest: sha256:c738f59a734ac17812aae5032cfc6f799e03c1f09d9146edb9c2836bc589f3dc
Status: Downloaded newer image for ghcr.io/conradludgate/spotify-auth-proxy:latest
APIKey: xxxxxx...
Token:  xxxxxx...
Auth:   http://localhost:27228/authorize?token=xxxxxx...
```

## Apply configurations
```sh
$ terraform init
$ terraform apply
```

---

## LISENCE
MIT

## EPILOGUE
>     A whale!
>     Down it goes, and more, and more
>     Up goes its tail!
>
>     -Buson Yosa
