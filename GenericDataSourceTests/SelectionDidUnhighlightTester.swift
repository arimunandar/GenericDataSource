//
//  SelectionDidUnhighlightTester.swift
//  GenericDataSource
//
//  Created by Mohamed Afifi on 10/19/16.
//  Copyright © 2016 mohamede1945. All rights reserved.
//

import Foundation
import GenericDataSource
import XCTest

class SelectionDidUnhighlightTester<CellType>: DataSourceTester where CellType: ReportCell, CellType: ReusableCell, CellType: NSObject {
    let dataSource: ReportBasicDataSource<CellType> = ReportBasicDataSource<CellType>()
    let selector = MockSelectionController<Report, CellType>()

    required init(id: Int, numberOfReports: Int, collectionView: GeneralCollectionView) {
        dataSource.items = Report.generate(numberOfReports: numberOfReports)
        dataSource.registerReusableViewsInCollectionView(collectionView)
        dataSource.setSelectionHandler(selector)
    }

    func test(indexPath: IndexPath, dataSource: AbstractDataSource, tableView: UITableView) {
        return dataSource.tableView(tableView, didUnhighlightRowAt: indexPath)
    }

    func test(indexPath: IndexPath, dataSource: AbstractDataSource, collectionView: UICollectionView) {
        return dataSource.collectionView(collectionView, didUnhighlightItemAt: indexPath)
    }

    func assert(result: Void, indexPath: IndexPath, collectionView: GeneralCollectionView) {
        XCTAssertTrue(selector.didUnhighlightCalled)
        XCTAssertEqual(indexPath, selector.indexPath)
    }

    func assertNotCalled(collectionView: GeneralCollectionView) {
        XCTAssertFalse(selector.didUnhighlightCalled)
    }
}
