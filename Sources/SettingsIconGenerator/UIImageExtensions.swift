#if canImport(UIKit)
import UIKit
import SafeSFSymbols

extension UIImage {

    @available(iOS 13, tvOS 13, *)
    public static func generateSettingsIcon(_ symbol: SafeSFSymbol, backgroundColor: UIColor) -> UIImage {

        let iconConfig       = UIImage.SymbolConfiguration(pointSize: CGFloat(iconFontSize),       weight: .regular)
        let backgroundConfig = UIImage.SymbolConfiguration(pointSize: CGFloat(backgroundFontSize), weight: .regular)

        let icon = UIImage(symbol)
            .withConfiguration(iconConfig)
            .withTintColor(.white, renderingMode: .alwaysOriginal)

        let background = UIImage(backgroundSymbol)
            .withConfiguration(backgroundConfig)
            .withTintColor(backgroundColor, renderingMode: .alwaysOriginal)

        let renderer = UIGraphicsImageRenderer(size: background.size)
        return renderer.image { _ in
            background.draw(in: CGRect(origin: .zero, size: background.size))
            let rect = CGRect(
                x: (background.size.width  - icon.size.width)  / 2,
                y: (background.size.height - icon.size.height) / 2,
                width:  icon.size.width,
                height: icon.size.height
            )
            icon.draw(in: rect)
            
        }
    }

    @available(iOS 13, tvOS 13, *)
    public static func generateSettingsIcon(_ image: UIImage, backgroundColor: UIColor) -> UIImage {

        let iconConfig       = UIImage.SymbolConfiguration(pointSize: CGFloat(iconFontSize),       weight: .regular)
        let backgroundConfig = UIImage.SymbolConfiguration(pointSize: CGFloat(backgroundFontSize), weight: .regular)

        let icon = image
            .withConfiguration(iconConfig)
            .withTintColor(.white, renderingMode: .alwaysOriginal)

        let background = UIImage(backgroundSymbol)
            .withConfiguration(backgroundConfig)
            .withTintColor(backgroundColor, renderingMode: .alwaysOriginal)

        let renderer = UIGraphicsImageRenderer(size: background.size)
        return renderer.image { _ in
            background.draw(in: CGRect(origin: .zero, size: background.size))
            let rect = CGRect(
                x: (background.size.width  - icon.size.width)  / 2,
                y: (background.size.height - icon.size.height) / 2,
                width:  icon.size.width,
                height: icon.size.height
            )
            icon.draw(in: rect)
            
        }
    }
}
#endif
