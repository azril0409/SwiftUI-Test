//
//  Viewmodel.swift
//  Sample
//
//  Created by Deo on 2020/7/6.
//  Copyright © 2020 Chainmeans. All rights reserved.
//

import SwiftUI
import CoreData

class ViewModel: ObservableObject {
    private let context:NSManagedObjectContext
    @Published
    var items:[Item] = []
    
    init(context:NSManagedObjectContext) {
        self.context = context
    }
}

extension ViewModel{
    func selectAll(){
        let request = NSFetchRequest<Item>()
        do{
            self.items = try context.fetch(request)
        }catch{
            print(error)
        }
    }
}

//MARK: 新增
extension ViewModel{
    func insert(content:String){
        let item = Item()
        item.content = content
        context.insert(item)
    }
}


//MARK: 刪除
extension ViewModel{
    func delete(item:Item){
        context.delete(item)
    }
}
