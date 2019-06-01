import React, { Component } from 'react';
import axios from 'axios'
import './App.css';

class App extends Component {
  constructor() {
    super();
    this.state = {
      apiData: null,
      apiDataLoaded: false,
    };
  }

  componentDidMount = async () => {
    const movies = await axios.get('http://localhost:4567/movies');
    const apiData = movies.data;
    this.setState({
      apiData: apiData,
      apiDataLoaded: true 

    })
  }
  

  showMoviesOnPage() {
    return this.state.apiData.map((movie) => {
      return (
        <div>
        <h1 className="movie-info">{movie.title}</h1>
          <div className="movie-info">{movie.year}</div>
          <div className="movie-info">{movie.genre}</div>
          <div className="movie-info">{movie.director}</div>
          <div className="movie-info">{movie.plot}</div>
          <img className="movie-image" src={movie.image} />
        </div>
      );
    });
  }

  render() {
    console.log(this.state.apiData)
    return (
      <div className="App">

          <img className="header-image"src="https://media.socastsrm.com/wordpress/wp-content/blogs.dir/364/files/2019/01/netflix.png"/>        <h1 className="netflux-title">NETFLUX</h1>

          <nav>
                    <ul className="header-nav">
                        <li>Movies</li>
                        <li>Profile</li>
                        <li>Favorites</li> 
                        <li>Sign Up</li>          
                        
                    </ul>
                </nav>

                <h2 className="new-additions">NEW ADDITIONS:</h2>

          {(this.state.apiDataLoaded) ? this.showMoviesOnPage() : <p>Loading...</p>}
        
      </div>
    );
  }
}

export default App;