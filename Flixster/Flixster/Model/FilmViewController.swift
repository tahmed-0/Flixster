//
//  FilmViewController.swift
//  Flixster
//
//  Created by Ahmed on 3/6/23.
//

import UIKit

class FilmViewController: UIViewController, UITableViewDataSource {
    
    let apiKey = "f86e05a30c0f1a238a35b0aaea814403"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FilmCell", for: indexPath) as! FilmCell
        
        let film = films[indexPath.row]
            
        cell.configure(with: film)
            
        return cell
    }
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var films: [Film] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        //tableView.dataSource = self
        //films = Film.mockFilms
        
        //Create a URL for the request
        // In this case, the custom search URL you created in in part 1
        let url = URL(string: "https://api.themoviedb.org/3/movie/550?api_key="+apiKey)!

        // Use the URL to instantiate a request
        let request = URLRequest(url: url)

        // Create a URLSession using a shared instance and call its dataTask method
        
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            // The `JSONSerialization.jsonObject(with: data)` method is a "throwing" function (meaning it can throw an error) so we wrap it in a `do` `catch`
            // We cast the resultant returned object to a dictionary with a `String` key, `Any` value pair.
            do {
                let jsonDictionary = try JSONSerialization.jsonObject(with: data) as? [String: Any]
                print(jsonDictionary)
            } catch {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Initiate the network request
        task.resume()
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller
        // Get the cell that triggered the segue
        if let cell = sender as? UITableViewCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {

            // Use the index path to get the associated track
            let track = films[indexPath.row]

            // Set the track on the detail view controller
            detailViewController.film = track
        }


    }
    
    
    

  
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow {

            // Deselect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

}
