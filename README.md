Note:

This repo houses the frontend code for Watchlist. Please refer here for the project's backend code and installation instructions. https://github.com/daveholmes88/watchlistFrontEnd

Watchlist:

An application to browse movies and add them to a "seen" list and a "watchlist"

Demo:

A video demo of Watchlist is available here https://www.youtube.com/watch?v=uW_tenUXInE&t=

Usage and Features:

Watchlist has three main features, the ability to browse the database of movies, the ability to add any movie to a personal "seen" list or "watchlist", and click on any movie to learn more about it. 

Backend Prerequisites

Rails 6

SQL

Backend Installation Overview:

After cloning this repo, first run the Rails server:

cd HopsAlongBackend

bundle install

Database installation:

rails db:create

rails db:migrate

rails db:seed

Run Rails server:

rails s
