//
//  HomeViewController.swift
//  Qiushi
//
//  Created by Link on 2019/12/8.
//  Copyright © 2019 Link. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import MJRefresh
import KakaJSON
import Kingfisher

class HomeViewController: UIViewController {
    
    let tableView = UITableView()
    var dataArray = Array<Item>()
    var page = 1
    static let cellId = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: Self.cellId)
        view.addSubview(tableView)
        
        tableView.mj_header = MJRefreshNormalHeader(refreshingBlock: { [unowned self] in
            self.page = 1
            self.dataArray.removeAll()
            self.requestData()
        })
        tableView.mj_footer = MJRefreshAutoNormalFooter(refreshingBlock: { [unowned self] in
            self.page += 1
            self.requestData()
        })
        tableView.mj_header?.beginRefreshing()
    }
    
    func requestData() {
        request(API.imgrank, parameters: ["page": page]).responseJSON { (response) in
            self.tableView.mj_header?.endRefreshing()
            self.tableView.mj_footer?.endRefreshing()
            guard let dict = response.result.value else { return }
            guard let items = JSON(dict)["items"].arrayObject else { return }
            let models = modelArray(from: items, Item.self)
            if models.count < 10 {
                self.tableView.mj_footer?.endRefreshingWithNoMoreData()
            }
            self.dataArray.append(contentsOf: models)
            self.tableView.reloadData()
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Self.cellId, for: indexPath)
        let item = dataArray[indexPath.row]
        cell.textLabel?.text = item.content
        let url = item.user.thumb.replacingOccurrences(of: ".webp", with: ".png")
        cell.imageView?.kf.setImage(with: URL(string: url))
        return cell
        
    }
}
