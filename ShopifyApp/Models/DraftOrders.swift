//
//  DraftOrder.swift
//  ShopifyApp
//
//  Created by Youssef Waleed on 02/06/2024.
//

import Foundation

struct DraftOrderResponse: Codable {
    let draftOrder: DraftOrder

    enum CodingKeys: String, CodingKey {
        case draftOrder = "draft_order"
    }
}

struct DraftOrder: Codable {
    let id: Int
    let note: String?
    let email: String
    let taxesIncluded: Bool
    let currency: String
    let taxExempt: Bool
    let completedAt: String?
    let name, status: String
    var lineItems: [LineItem]
    let shippingAddress, billingAddress: Address
    let shippingLine: String?
    let orderID: Int?
    let appliedDiscount: AppliedDiscount?
    let taxLines: [String]
    let tags: String
    let noteAttributes: [String]
    let totalPrice, subtotalPrice: String
    let paymentTerms: String?
    let customer: Customer

    enum CodingKeys: String, CodingKey {
        case id, note, email
        case taxesIncluded = "taxes_included"
        case currency
        case taxExempt = "tax_exempt"
        case completedAt = "completed_at"
        case name, status
        case lineItems = "line_items"
        case shippingAddress = "shipping_address"
        case billingAddress = "billing_address"
        case appliedDiscount = "applied_discount"
        case orderID = "order_id"
        case shippingLine = "shipping_line"
        case taxLines = "tax_lines"
        case tags
        case noteAttributes = "note_attributes"
        case totalPrice = "total_price"
        case subtotalPrice = "subtotal_price"
        case paymentTerms = "payment_terms"
        case customer
    }
}

struct AppliedDiscount: Codable {
    let description, value, title, amount: String
    let valueType: String

    enum CodingKeys: String, CodingKey {
        case description, value, title, amount
        case valueType = "value_type"
    }
}

// MARK: - LineItem
struct LineItem: Codable {
    let id, variantID, productID: Int
    let title, variantTitle, sku, vendor: String
    let quantity: Int
    let appliedDiscount: AppliedDiscount?
    let name: String
    let properties: [String]
    let custom: Bool
    let price: String

    enum CodingKeys: String, CodingKey {
        case id
        case variantID = "variant_id"
        case productID = "product_id"
        case title
        case variantTitle = "variant_title"
        case sku, vendor, quantity
        case appliedDiscount = "applied_discount"
        case name, properties, custom, price
    }
}