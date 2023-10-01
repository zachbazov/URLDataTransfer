//
//  DataTransferRequestable.swift
//
//
//  Created by Developer on 23/09/2023.
//

import Foundation

public protocol DataTransferRequestable {
    
    func request<T, E>(endpoint: E,
                       completion: @escaping (Result<T, DataTransferError>) -> Void) -> URLSessionTaskCancellable?
    where T: Decodable,
          E: ResponseRequestable
    
    func request<E>(endpoint: E,
                    completion: @escaping (Result<Void, DataTransferError>) -> Void) -> URLSessionTaskCancellable?
    where E: ResponseRequestable
    
    
    @available(iOS 13.0.0, *)
    func request<T, E>(endpoint: E) async -> Result<T, DataTransferError>? where T: Decodable
}
