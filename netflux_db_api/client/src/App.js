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
  }
  


  showMoviesOnPage() {
    return this.state.apiData.map((movie) => {
      return (
        <div className="movie" key={movie.title}>
          <p className="content">{movie.year}</p>
          <span className="author">{movie.genre}</span>
          <span className="category">{movie.director}</span>
          <span className="category">{movie.plot}</span>
          <img className="image" src={movie.image} />
        </div>
      );
    });
  }

  render() {
    return (
      <div className="App">
        <div>
          {(this.state.apiDataLoaded) ? this.showQuotesOnPage() : <p>Loading...</p>}
        </div>
      </div>
    );
  }
}

export default App;