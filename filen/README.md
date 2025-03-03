# Home Assistant Add-on: Filen

## About

[filen](https://filen.io/) is an encrypted cloud storage service with generous free tier and resonable pricing.
This addon is based on the github [releases] (https://github.com/FilenCloudDienste/filen-cli/releases/)

## Prerequisites

In order to use this add-on, you'll need a Filen account.

It provides free a free storage of 10GB (20GB if you go through a referral link)
and 10GB per referral upto another 30GB. Sign up using my referral link at
the following URL:

<https://filen.io/r/46fa0f03b4a5d591817a8b708f0121c8>

## Installation

1. Click the Home Assistant button below add this repository.

   [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fkarteekiitg%2Fhassio-addons)

1. Seach for filen addon and install it.
1. Click the "Install" button to install the add-on.
1. Configure using your account credentials as below.
1. Start the "Filen" add-on.
1. Check the logs of the "Filen" add-on to see if everything went well.
1. Done!

## Configuration

```yaml
username: "your username"
password: "your password"
2fa: "your 2fa"
```

## Support

Create an issue on github
