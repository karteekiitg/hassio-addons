# Home assistant add-on: whoogle-search

## About

[filen](https://filen.io/) is an encrypted cloud storage service with generous free tier and resonable pricing.
This addon is based on the github release https://github.com/FilenCloudDienste/filen-cli/releases/tag/v0.0.29

## Configuration

Webui can be found at <http://homeassistant:PORT>.
Configurations can be done through the app webUI, except for the following options

Options can be configured through two ways :

- Addon options

```yaml
"CONFIG_LOCATION": location of the config.yaml (see below)
```

- Config.yaml

Custom env variables can be added to the config.yaml file referenced in the addon options. Full env variables can be found here : https://github.com/benbusby/whoogle-search#environment-variables. It must be entered in a valid yaml format, that is verified at launch of the addon.

## Installation

The installation of this add-on is pretty straightforward and not different in comparison to installing any other add-on.

1. Add my add-ons repository to your home assistant instance (in supervisor addons store at top right, or click button below if you have configured my HA)
   [![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fkarteekiitg%2Ffilen)
1. Install this add-on.
1. Click the `Save` button to store your configuration.
1. Set the add-on options to your preferences
1. Start the add-on.
1. Check the logs of the add-on to see if everything went well.
1. Open the webUI and adapt the software options

## Support

Create an issue on github


# Home Assistant Add-on: Filen

## About

[filen](https://filen.io/) is an encrypted cloud storage service with generous free tier and resonable pricing.
This addon is based on the github release https://github.com/FilenCloudDienste/filen-cli/releases/tag/v0.0.29

## Prerequisites

In order to use this add-on, you'll need a Filen account.

It provides free a free storage of 10GB (20GB if you go through a referral link)
and 10GB per referral upto another 30GB. Sign up using my referral link at
the following URL:

<https://filen.io/r/46fa0f03b4a5d591817a8b708f0121c8>

## Installation

1. Click the Home Assistant My button below to open the add-on on your Home
   Assistant instance.

   [![Open this add-on in your Home Assistant instance.][addon-badge]][addon]

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
