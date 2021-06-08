//
//  SongViewModel.swift
//  iTunesAPI_MVVM-C
//
//  Created by Marcos Vinicius Majeveski De Angeli on 07/06/21.
//

import Foundation

protocol SongViewModelType {

    var viewDelegate: SongViewModelViewDelegate? {get set}
}

protocol SongViewModelCoordinatorDelegate: AnyObject{
    
    func updateScreen()
    
}

protocol SongViewModelViewDelegate: AnyObject{
    
    func updateScreen()
    
}

class SongViewModel {
    //MARK: - Delegates
    weak var viewDelegate: SongViewModelViewDelegate?
    
    //MARK: - Properties
    ///The name of the artist returned by the search request.
    let artistName: String
    
    ///The name of the track, song, video, TV episode, and so on returned by the search request.
    let trackName: String
    
    ///A URL for the content associated with the returned media type. You can click the URL to view the content in the iTunes Store.
    let trackViewUrl: String?
    
    ///A URL referencing the 30-second preview file for the content associated with the returned media type.
    let previewUrl: String?
    
    //MARK: - Init
    init(artistName: String, trackName: String, trackViewUrl: String? = nil, previewUrl: String? = nil){
        self.artistName = artistName
        self.trackName = trackName
        self.trackViewUrl = trackViewUrl
        self.previewUrl = previewUrl
    }
    
}
