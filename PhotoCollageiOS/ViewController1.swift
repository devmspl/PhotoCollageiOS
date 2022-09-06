//
//  ViewController1.swift
//  PhotoCollageiOS
//
//  Created by Macbook on 05/09/22.
//

import UIKit
import CollageView


class ViewController1: UIViewController {

    let images = [UIImage(named: "SingleImage"),UIImage(named: "StoryImage")]

    var collageView = CollageView(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(collageView)

        collageView.delegate    = self
        collageView.dataSource  = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collageView.frame = view.bounds
    }

    deinit {
        collageView.delegate    = nil
        collageView.dataSource  = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}



extension ViewController1: CollageViewDataSource {

    func collageViewNumberOfTotalItem(_ collageView: CollageView) -> Int {
        return images.count
    }

    func collageViewNumberOfRowOrColoumn(_ collageView: CollageView) -> Int {

        return 1
    }

    func collageViewLayoutDirection(_ collageView: CollageView) -> CollageViewLayoutDirection {

        return .horizontal
    }

    func collageView(_ collageView: CollageView, configure itemView: CollageItemView, at index: Int) {

        itemView.image = images[index]
        itemView.layer.borderWidth = 3
    }
}

extension ViewController1: CollageViewDelegate {

    internal func collageView(_ collageView: CollageView, didSelect itemView: CollageItemView, at index: Int) {

        let message = "didSelect at index:  \(index), rowIndex: \(String(describing: itemView.collageItem!.rowIndex))"
        print(message)
    }
}
