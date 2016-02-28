//
//  DataSourceSelectionHandler.swift
//  GenericDataSource
//
//  Created by Mohamed Afifi on 2/14/16.
//  Copyright © 2016 mohamede1945. All rights reserved.
//

import Foundation

public protocol DataSourceSelectionHandler {
    
    typealias ItemType
    typealias CellType: ReusableCell
    
    // MARK:- Highlighting
    func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool
    
    func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        didHighlightItemAtIndexPath indexPath: NSIndexPath)
    
    func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        didUnhighlightItemAtIndexPath indexPath: NSIndexPath)
    
    // MARK:- Selecting
    func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool
    
    func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        didSelectItemAtIndexPath indexPath: NSIndexPath)
    
    // MARK:- Deselecting
    func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool
    
    func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        didDeselectItemAtIndexPath indexPath: NSIndexPath)
}

// MARK:- Default implementation
extension DataSourceSelectionHandler {
    
    // MARK:- Highlighting
    public func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
            return true
    }
    
    public func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        didHighlightItemAtIndexPath indexPath: NSIndexPath) {
            // does nothing
    }
    
    public func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        didUnhighlightItemAtIndexPath indexPath: NSIndexPath) {
            // does nothing
    }
    
    // MARK:- Selecting
    public func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
            return true
    }

    public func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        didSelectItemAtIndexPath indexPath: NSIndexPath) {
            // does nothing
    }

    // MARK:- Deselecting
    public func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
            return true
    }
    
    public func dataSource(
        dataSource: BasicDataSource<ItemType, CellType>,
        collectionView: CollectionView,
        didDeselectItemAtIndexPath indexPath: NSIndexPath) {
            // does nothing
    }
}