# Project 2 - Flix

Flix is a movies app using the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: 12 hours spent in total

## User Stories

The following **required** functionality is complete:

- [ ] User sees an app icon on the home screen and a styled launch screen.
- [ ] User can view a list of movies currently playing in theaters from The Movie Database.
- [ ] Poster images are loaded using the UIImageView category in the AFNetworking library.
- [ ] User sees a loading state while waiting for the movies API.
- [ ] User can pull to refresh the movie list.
- [ ] User sees an error message when there's a networking error.
- [ ] User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

The following **optional** features are implemented:
- [ ] User can view a detail screen of any movie
- [ ] User can search for a movie.
- [ ] All images fade in as they are loading.
- [ ] User can view the large movie poster by tapping on a cell.
- [ ] Customize the selection effect of the cell.
- [ ] Customize the navigation bar.
- [ ] Customize the UI.

The following **additional** features are implemented:
- [ ] User can tap a poster in the details view to watch the trailer of the movie

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. I am interested in switching the display of the movies in the table view to switch between "text on the right and image on the left" and "image on the right and text on the left"
2.I am interested in adding another place in the navigation bar for the user to have their selected movies they want to watch.

## Video Walkthrough

Here's a walkthrough of implemented user stories:
![](https://github.com/jdimonte/Flix/blob/main/flix_new.gif)
GIF created with [Kap](https://getkap.co/).

## Notes

I ran into challenges with casting integers as strings, when I was trying to take the API call, use the id of the movie, and create the movie trailers youtube url. I am also still looking for certain vistual features, like the color of the "go back" arrow and text, along with the boarder size of the search bar.

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library

## License

    Copyright 2021 Jacqueline DiMonte

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
