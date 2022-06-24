//
//  Font.swift
//  Font
//

#if os(iOS)
import UIKit
public typealias NPFont = UIFont
#endif

#if os(macOS)
import AppKit
public typealias NPFont = NSFont
#endif

public enum Font {}

extension Font {
	public static func preferredFont(for style: NPFont.TextStyle, weight: NPFont.Weight = .regular) -> NPFont {
		NPFont.preferredFont(for: style, weight: weight)
	}

	@available(iOS 13.0, *)
	public static func preferredMonoFont(for style: NPFont.TextStyle, weight: NPFont.Weight = .regular) -> NPFont {
		NPFont.preferredMonoFont(for: style, weight: weight)
	}

	public static func scaledSystemFont(ofSize fontSize: CGFloat, weight: NPFont.Weight = .regular) -> NPFont {
		NPFont.scaledSystemFont(ofSize: fontSize, weight: weight)
	}
}

extension Font {
	public static let largeTitle = NPFont.preferredFont(forTextStyle: .largeTitle)

	public static let title1 = NPFont.preferredFont(forTextStyle: .title1)
	public static let title2 = NPFont.preferredFont(forTextStyle: .title2)
	public static let title3 = NPFont.preferredFont(forTextStyle: .title3)

	public static let headline = NPFont.preferredFont(forTextStyle: .headline)
	public static let subheadline = NPFont.preferredFont(forTextStyle: .subheadline)

	public static let body = NPFont.preferredFont(forTextStyle: .body)
	public static let callout = NPFont.preferredFont(forTextStyle: .callout)
	public static let footnote = NPFont.preferredFont(forTextStyle: .footnote)

	public static let caption1 = NPFont.preferredFont(forTextStyle: .caption1)
	public static let caption2 = NPFont.preferredFont(forTextStyle: .caption2)
}
