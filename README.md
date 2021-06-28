# Project 2 - Flix

Flix is a movies app using the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: 13 hours spent in total

## User Stories

The following **required** functionality is complete:

- [x] User sees an app icon on the home screen and a styled launch screen.
- [x] User can view a list of movies currently playing in theaters from The Movie Database.
- [x] Poster images are loaded using the UIImageView category in the AFNetworking library.
- [x] User sees a loading state while waiting for the movies API.
- [x] User can pull to refresh the movie list.
- [x] User sees an error message when there's a networking error.
- [x] User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

The following **optional** features are implemented:
- [ ] User can tap a poster in the collection view to see a detail screen of that movie
- [x] User can search for a movie.
- [x] All images fade in as they are loading.
- [ ] User can view the large movie poster by tapping on a cell.
- [ ] For the large poster, load the low resolution image first and then switch to the high resolution image when complete.
- [x] Customize the selection effect of the cell.
- [x] Customize the navigation bar.
- [x] Customize the UI.
- [x] User can view the app on various device sizes and orientations.
- [ ] Run your app on a real device.

The following **additional** features are implemented:
- [x] User can tap a poster in the details view to watch the trailer of the movie

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. I am interested in switching the display of the movies in the table view to switch between "text on the right and image on the left" and "image on the right and text on the left"
2.I am interested in adding another place in the navigation bar for the user to have their selected movies they want to watch.

## Video Walkthrough

Here's a walkthrough of implemented user stories:


<img src="https://github.com/jdimonte/Flix/blob/main/first.gif" width="250">
<img src="https://github.com/jdimonte/Flix/blob/main/second.gif" width="250">
<img src="https://github.com/jdimonte/Flix/blob/main/third.gif" width="250">

The first GIF: shows the activity indicator showing up before the API call is finished, and an error when the user is not connected to wifi. The second GIF: shows the reload/refresh feature, and the table view leading to a detailed view of each movie. The third GIF: shows the collection of movies, along with a search bar and the trailer of the movie when the user clicks on the poster image.

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
