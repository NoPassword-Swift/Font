//
//  UIFont.swift
//  Font
//

#if os(iOS)

import UIKit

extension UIFont {
	static func preferredFont(for style: TextStyle, weight: Weight) -> UIFont {
		let metrics = UIFontMetrics(forTextStyle: style)
		let desc = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
		let font = UIFont.systemFont(ofSize: desc.pointSize, weight: weight)
		return metrics.scaledFont(for: font)
	}

	@available(iOS 13.0, *)
	static func preferredMonoFont(for style: TextStyle, weight: Weight) -> UIFont {
		let metrics = UIFontMetrics(forTextStyle: style)
		let desc = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style)
		let font = UIFont.monospacedSystemFont(ofSize: desc.pointSize, weight: weight)
		return metrics.scaledFont(for: font)
	}

	static func scaledSystemFont(ofSize fontSize: CGFloat, weight: Weight) -> UIFont {
		UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: fontSize, weight: weight))
	}
}

#endif
