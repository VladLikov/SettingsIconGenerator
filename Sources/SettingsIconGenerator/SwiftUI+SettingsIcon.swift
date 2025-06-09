#if canImport(SwiftUI)
import SwiftUI
import SafeSFSymbols

@available(iOS 13, tvOS 13, macOS 11, *)
public struct SettingsIcon: View {

    let symbol: SafeSFSymbol
    let backgroundColor: Color

    public var body: some View {
        ZStack {
            Image(backgroundSymbol)
                .font(.system(size: CGFloat(backgroundFontSize)))
                .foregroundColor(backgroundColor)
            Image(symbol)
                .font(.system(size: CGFloat(iconFontSize)))
                .foregroundColor(.white)
        }
    }
}
#endif
