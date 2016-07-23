# Chantilly

Backend, frontend and API used by [frais.io](http://frais.io/), a french
short-news website about digital news (soon to come).

This is an Elixir-on-[Phoenix](http://www.phoenixframework.org/) app.
To start it:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

You can then visit [`localhost:4000`](http://localhost:4000) from your browser.

## This is a WIP.

It is a side-project, started recently, to create a blog-like, super simple
way of writing short articles about digital news.

Its main "innovation" (if we can say so…) will be the way it is handling
content creation: the target is to have only one, simple field that contains
markdown content and a few specific lines.

A news format example:

        https://telegram.org/blog/botprize (Blog officiel de Telegram)

        # Telegram offrira 1 000 000$ aux développeurs de bots sur sa plateforme

        Comme quoi, il n'y a pas que [Microsoft qui s'intéresse aux bots][1].
        Pour mettre en avant les fonctionnalités de sa messagerie instantanée sécurisée (concurrente de [WhatsApp][2] ou [Facebook Messenger][3]), les russes derrière [Telegram][4] mettent 1 million de dollars sur le sujet
        à buzz du moment, les bots, via des primes de 25 000 $ par bot créé qui leur plait. Si ça ne motive pas
        certains développeurs à y créer un *@CarambarBot*, on ne sait plus comment faire.

        [1]: https://dev.botframework.com/
        [2]: https://www.whatsapp.com/
        [3]: https://www.messenger.com/
        [4]: https://telegram.org/

        #bots #telegram #MessagerieInstantanée
        by @Signez (Stanibot)
        via https://news.ycombinator.com/item?id=11522907
        on (now)

It follows this structure:

        https://source-url (Source title)

        # News Title

        Content with *markdown*, _simple_ and `usual` things with [links][1] using
        the "reference" syntax of Markdown for readibility.

        [1]: http://example.com/

        #tag1 #tag2
        by @Author (Visible author name)
        via https://via-url/
        on date-of-publication or (now)

The aim is to have something nearly as simple to write as a long tweet.
