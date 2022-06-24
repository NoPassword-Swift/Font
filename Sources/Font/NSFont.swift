//
//  NSFont.swift
//  Font
//

#if os(macOS)

import AppKit

extension NSFont {
	static func preferredFont(for style: TextStyle, weight: Weight) -> NSFont {
		let desc = NSFontDescriptor.preferredFontDescriptor(forTextStyle: style)
		return NSFont.systemFont(ofSize: desc.pointSize, weight: weight)
	}

	static func preferredMonoFont(for style: TextStyle, weight: Weight) -> NSFont {
		let desc = NSFontDescriptor.preferredFontDescriptor(forTextStyle: style)
		return NSFont.monospacedSystemFont(ofSize: desc.pointSize, weight: weight)
	}

	static func scaledSystemFont(ofSize fontSize: CGFloat, weight: Weight) -> NSFont {
		NSFont.systemFont(ofSize: fontSize, weight: weight)
	}
}

#endif
