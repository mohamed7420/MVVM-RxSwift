//
//  ViewController.swift
//  MVVM
//
//  Created by Mohamed osama on 18/11/2021.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    static func generateController() -> ViewController{
        let vc = UIStoryboard(name: "Main", bundle: .main).instantiateInitialViewController() as! ViewController
        return vc
    }
    private let disposeBag = DisposeBag()
    private var viewModel = RestaurantListViewModel()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.fetchRestauarants().bind(to: tableView.rx.items(cellIdentifier: "cell")){index , viewModel , cell in
            cell.textLabel?.text = viewModel.displayText
            cell.detailTextLabel?.text = viewModel.displayText
        }.disposed(by: disposeBag)
    }
    
    
    
}


