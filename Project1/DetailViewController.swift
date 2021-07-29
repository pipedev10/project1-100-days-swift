//
//  DetailViewController.swift
//  Project1
//
//  Created by Pipe Carrasco on 28-07-21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var pageNumber = 0
    var totalPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Picture \(pageNumber) of \(totalPage)"
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }}
