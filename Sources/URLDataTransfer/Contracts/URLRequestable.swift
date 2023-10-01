//
//  URLRequestable.swift
//  clean-mvvmc-master
//
//  Created by Developer on 23/09/2023.
//

import Foundation

public protocol URLRequestable {
    
    associatedtype RequestErrorType: Error
    
    func request(endpoint: Requestable,
                 completion: @escaping (Result<Data?, RequestErrorType>) -> Void) -> URLSessionTaskCancellable?
    
    func request(request: URLRequest,
                 completion: @escaping (Result<Data?, RequestErrorType>) -> Void) -> URLSessionTaskCancellable
    
    
    @available(iOS 13.0.0, *)
    func request(endpoint: Requestable) async throws -> (Data, URLResponse)?
    
    @available(iOS 13.0.0, *)
    func request(request: URLRequest) async throws -> (Data, URLResponse)?
}
