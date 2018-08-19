//
//  Money.swift
//  CoinPriceBar
//
//  Created by Thanh Pham on 12/12/17.
//  Copyright © 2017 Thanh Pham. All rights reserved.
//

typealias FreedomMoney = Coin

enum Coin: String {
  case BTC
  case BCH
  case ETH
  case LTC
  case XMR
  case NANO
}

enum FiatMoney: String {
  case USD
}

extension Coin {

  func priceProvider() -> CoinPriceProvider {
    switch self {
    case .XMR, .NANO: return BinancePriceProvider()
    default: return CoinbasePriceProvider()
    }
  }
}

extension Coin {

  func unicode() -> String {
    switch self {
    case .BTC: return "₿"
    case .BCH: return "₿"
    case .ETH: return "Ξ"
    case .LTC: return "Ł"
    case .XMR: return "ᵯ"
    case .NANO: return "ᵰ"
    }
  }

  func color() -> NSColor {
    switch self {
    case .BTC: return NSColor(displayP3Red: 244 / 255, green: 180 / 255, blue: 69 / 255, alpha: 1)
    case .BCH: return NSColor(displayP3Red: 154 / 255, green: 193 / 255, blue: 98 / 255, alpha: 1)
    case .ETH: return NSColor(displayP3Red: 115 / 255, green: 123 / 255, blue: 182 / 255, alpha: 1)
    case .LTC: return NSColor(displayP3Red: 182 / 255, green: 180 / 255, blue: 182 / 255, alpha: 1)
    case .XMR: return NSColor(displayP3Red: 255 / 255, green: 140 / 255, blue: 0 / 255, alpha: 1)
    case .NANO: return NSColor(displayP3Red: 100 / 255, green: 149 / 255, blue: 237 / 255, alpha: 1)
    }
  }
}
