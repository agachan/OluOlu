//
//  ViewController.swift
//  OluOlu
//
//  Created by AGA TOMOHIRO on 2020/09/10.
//  Copyright © 2020 AGA TOMOHIRO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ingreCollectionView: UICollectionView!
    let cellId = "cellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let nib = UINib(nibName: "IngreCell", bundle: nil)
        ingreCollectionView.register(nib, forCellWithReuseIdentifier: cellId)
        ingreCollectionView.delegate = self
        ingreCollectionView.dataSource = self
    }


}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.ingreCollectionView.frame.width/3
        print(width)
        return .init(width: width, height: width)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! IngreCollectionViewCell
        return cell
        
    }
    
    
}
