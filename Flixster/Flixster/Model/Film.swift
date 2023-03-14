//
//  Film.swift
//  Flixster
//
//  Created by Ahmed on 3/6/23.
//

import Foundation
import Nuke

// Creating a Film model struct


struct FilmResponse: Decodable {
    let results: [Film]
}


struct Film: Decodable {
    
    let artWorkUrl100: URL
    
    
    //Detail properties
    let original_title: String
    let overview: String
    let vote_average: Float
    let vote_count: Int
    let popularity: Double
    
}


//extenstions with a mock film static var

extension Film {
    //An array of mock data for the movie
//    //Mock data source: https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed
//    static var mockFilms: [Film] = [
//        
//        Film(artWorkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BZDA0MzcxZTgtMTAzZC00MGJkLTg3YzItZjMzNjkwOTVlODNlXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg")!, original_title: "Knock at the cabin", overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.", vote_average: 6.6, vote_count: 826, popularity: 3975.228),
//        
//        Film(artWorkUrl100: URL(string: "https://m.media-amazon.com/images/M/MV5BODJkZmE1OWYtZjg4Mi00ZDgxLWFkYjUtMDllNDkyYjNiNjViXkEyXkFqcGdeQXVyNzUwMDA5NDE@._V1_.jpg")!, original_title: "Little Dixie", overview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.", vote_average: 6.3, vote_count: 52, popularity: 1688.474)
//    
//    ]
    
}
