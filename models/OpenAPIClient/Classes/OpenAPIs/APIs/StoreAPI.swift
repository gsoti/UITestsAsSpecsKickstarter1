//
// StoreAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class StoreAPI {

    /**
     Fetch store products.
     
     - parameter type: (query) The type of products to fetch. - 0: Consumable - 1: Non-Consumable - 2: Non-Renewing Subscription - 3: Auto-Renewing Subscription (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getStore(type: StoreProductType? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getStoreWithRequestBuilder(type: type).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch store products.
     - GET /store
     - This endpoint will retrieve the available products from the store
     - parameter type: (query) The type of products to fetch. - 0: Consumable - 1: Non-Consumable - 2: Non-Renewing Subscription - 3: Auto-Renewing Subscription (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getStoreWithRequestBuilder(type: StoreProductType? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/store"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": (wrappedValue: type?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Verify receipt
     
     - parameter receipt: (form) The Base64 encoded receipt data. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func postStoreVerify(receipt: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return postStoreVerifyWithRequestBuilder(receipt: receipt).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Verify receipt
     - POST /store/verify
     - This endpoint will verify the receipt for authenticity.
     - Bearer Token:
       - type: http
       - name: bearerAuth
     - parameter receipt: (form) The Base64 encoded receipt data. 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func postStoreVerifyWithRequestBuilder(receipt: String) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/store/verify"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "receipt": receipt.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
